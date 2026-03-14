param($Path = "content/post/2023")
$posts = Get-ChildItem -Path $Path -Recurse -Filter "index.md"

function Get-DescriptionFromContent($body) {
    # Remove code blocks, headers, images, links for description generation
    $clean = $body -replace '(?s)```.*?```', ''
    $clean = $clean -replace '!\[.*?\]\(.*?\)', ''
    $clean = $clean -replace '\[.*?\]\(.*?\)', ''
    $clean = $clean -replace '#+ ', ''
    $clean = $clean -replace '\$', ''
    # Remove extra spaces and newlines
    $clean = $clean.Trim()
    $clean = $clean -replace '\s+', ' '
    
    if ($clean.Length -gt 160) { $clean = $clean.Substring(0, 157) + "..." }
    return $clean
}

foreach ($post in $posts) {
    Write-Host "Processing $($post.FullName)"
    $content = Get-Content -Path $post.FullName -Raw
    $lines = Get-Content -Path $post.FullName
    
    $inFrontMatter = $false
    $inCodeBlock = $false
    $headerFmCount = 0
    
    $hasH1 = $false
    $description = ""

    # 1. Analyze for H1 in body and get FM info
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]
        $trimmed = $line.Trim()

        if ($trimmed -eq "---") {
            $headerFmCount++
            if ($headerFmCount -eq 1) { $inFrontMatter = $true }
            else { $inFrontMatter = $false }
            continue
        }

        if ($inFrontMatter) {
            if ($trimmed -match '^description:\s*"(.*)"') { $description = $matches[1] }
            elseif ($trimmed -match "^description:\s*'(.*)'") { $description = $matches[1] }
            elseif ($trimmed -match '^description:\s*(.*)') { $description = $matches[1] }
            continue
        }

        if ($trimmed -match '^```') {
            $inCodeBlock = -not $inCodeBlock
            continue
        }

        if (-not $inCodeBlock) {
            if ($trimmed -match '^#\s') { $hasH1 = $true }
        }
    }

    # 2. Process
    $processedLines = @()
    $headerFmCount = 0
    $inFrontMatter = $false
    $inCodeBlock = $false
    
    # Body extraction for description if needed
    $sepIndex = $content.IndexOf("---", 3)
    if ($sepIndex -ge 0) {
        $bodyText = $content.Substring($sepIndex + 3).Trim()
    } else {
        $bodyText = $content
    }
    
    if ($description -eq "" -or $description -eq "''" -or $description -eq '""') {
        $description = Get-DescriptionFromContent $bodyText
    }

    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $processedLines_placeholder = $lines[$i]
        $trimmed = $line.Trim()

        if ($trimmed -eq "---") {
            $headerFmCount++
            $processedLines += $line
            if ($headerFmCount -eq 1) { $inFrontMatter = $true }
            else { $inFrontMatter = $false }
            continue
        }

        if ($inFrontMatter) {
            if ($trimmed -match '^description:') {
                $processedLines += "description: `"$description`""
            } else {
                $processedLines += $line
            }
            continue
        }

        if ($trimmed -match '^```') {
            $inCodeBlock = -not $inCodeBlock
            $processedLines += $line
            continue
        }

        if (-not $inCodeBlock) {
            # Hierarchy Shift if H1 exists
            if ($hasH1) {
                if ($trimmed -match '^#\s+(.*)') {
                    $processedLines += "## $($matches[1])"
                } elseif ($trimmed -match '^##\s+(.*)') {
                    $processedLines += "### $($matches[1])"
                } elseif ($trimmed -match '^###\s+(.*)') {
                    $processedLines += "#### $($matches[1])"
                } else {
                    $processedLines += $line
                }
            } else {
                # Just remove empty headers
                if ($trimmed -match '^#{2,4}\s*$') {
                    # Skip empty header
                    continue
                }
                $processedLines += $line
            }
        } else {
            $processedLines += $line
        }
    }

    # Remove empty sections
    $finalLines = @()
    for ($i = 0; $i -lt $processedLines.Count; $i++) {
        $line = $processedLines[$i]
        $trimmed = $line.Trim()
        if ($trimmed -match '^#{2,4}\s+(Appendix|Reference|See also|Appendix)') {
            $hasNext = $false
            for ($j = $i + 1; $j -lt $processedLines.Count; $j++) {
                $nextTrimmed = $processedLines[$j].Trim()
                if ($nextTrimmed -ne "" -and $nextTrimmed -notmatch '^---') {
                    if ($nextTrimmed -notmatch '^#{2,4}\s') {
                        $hasNext = $true
                        break
                    } else {
                        break
                    }
                }
            }
            if ($hasNext) { $finalLines += $line }
        } else {
            $finalLines += $line
        }
    }

    [System.IO.File]::WriteAllLines($post.FullName, $finalLines)
}
