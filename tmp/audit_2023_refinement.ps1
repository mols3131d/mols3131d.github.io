$posts = Get-ChildItem -Path "content/post/2023" -Recurse -Filter "index.md"
$report = @()

foreach ($post in $posts) {
    $content = Get-Content -Path $post.FullName -Raw
    $lines = Get-Content -Path $post.FullName
    
    $issues = @()
    
    # 1. Check description
    if ($content -match "description: `"`"") {
        $issues += "Missing Description"
    } elseif ($content -match "description:\s*\n") {
        # This catch is for cases like 'description: ' followed by newline
        $issues += "Empty Description Field"
    }

    # 2 & 3. Check Headings
    $inFrontMatter = $false
    $headerCount = 0
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i].Trim()
        
        if ($line -eq "---") {
            $headerCount++
            if ($headerCount -eq 1) { $inFrontMatter = $true }
            else { $inFrontMatter = $false }
            continue
        }
        
        if (-not $inFrontMatter) {
            # Check for H1 in body
            if ($line -match "^#\s") {
                $issues += "H1 in Body (Line $($i+1))"
            }
            
            # Check for empty headers
            if ($line -match "^(#{2,4})\s*$") {
                $issues += "Empty Header $($line) (Line $($i+1))"
            }
            
            # Check for next line if current is header
            if ($line -match "^(#{2,4})\s+.+") {
                $nextLine = ""
                if ($i + 1 -lt $lines.Count) {
                    $nextLine = $lines[$i+1].Trim()
                }
                if ($nextLine -eq "" -and $i + 2 -lt $lines.Count) {
                    $nextLine = $lines[$i+2].Trim()
                }
                
                if ($nextLine -match "^#{2,4}\s") {
                    # This might be an empty section if there's no text between headers
                    # But the user specifically said "H2-4에 빈 경우가 있어 이거도 지워야해"
                    # which likely means '## ' followed by nothing.
                }
            }
        }
    }
    
    # Check for placeholder assets
    $dir = Split-Path $post.FullName
    $assets = Get-ChildItem -Path $dir -Include "*.png", "*.jpg" | Where-Object { $_.Name -match "Untitled" -or $_.Name -match "image" }
    if ($assets) {
        $issues += "Placeholder Assets found: $($assets.Name -join ', ')"
    }

    if ($issues.Count -gt 0) {
        $report += [PSCustomObject]@{
            File = $post.FullName.Replace("M:\workspaces\mols3131d.github.io\", "")
            Issues = $issues -join "; "
        }
    }
}

$report | Export-Csv -Path "tmp/audit_report_2023.csv" -NoTypeInformation
$report | Format-Table -AutoSize
