
$baseDir = "m:\workspaces\mols3131d.github.io\content\post\2023"
$files = Get-ChildItem -Path $baseDir -Recurse -Filter "index.md"

foreach ($file in $files) {
    Write-Host "Refining: $($file.FullName)"
    $content = Get-Content -Path $file.FullName
    
    $newContent = @()
    $inFrontMatter = $false
    $fmCount = 0
    
    foreach ($line in $content) {
        if ($line.Trim() -eq "---") {
            $inFrontMatter = !$inFrontMatter
            $fmCount++
            $newContent += $line
            continue
        }
        
        if ($inFrontMatter) {
            # Rule 4: Tag Standardization (basic)
            if ($line -match "^  - ") {
                $line = $line -replace "_", "-"
            }
            $newContent += $line
            continue
        }
        
        # Rule 1: H1 -> H2
        # Handle # , #**, # **
        if ($line -match "^#\s+") {
            $line = $line -replace "^#\s+", "## "
        } elseif ($line -match "^#\*\*") {
            $line = $line -replace "^#\*\*", "## **"
        }
        
        # Rule 2: Bare URL Wrapping
        # Avoid already wrapped <url> or linked [text](url)
        if ($line -match "https?://" -and $line -notmatch "<https?://" -and $line -notmatch "\[.*\]\(https?://") {
            # Simple wrapper for bare URLs on lines that don't look like MD links
            $line = [regex]::Replace($line, "(?<!<)(?<!\()(?<!src="")(?<!href="")(https?://[^\s\)\>]+)(?![^\(]*\))(?![^<]*>)", "<$1>")
        }
        
        $newContent += $line
    }
    
    Set-Content -Path $file.FullName -Value $newContent -Encoding utf8
}
