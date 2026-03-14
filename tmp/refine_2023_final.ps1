
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
            # Standardize tags
            if ($line -match "^  - ") {
                $line = $line -replace "_", "-"
            }
            $newContent += $line
            continue
        }
        
        # Rule 1: H1 -> H2 (Aggressive)
        if ($line -match "^#\s*(\*\*)?") {
            # Replace single # with ## if it's not already ##
            if ($line -notmatch "^##") {
                $line = $line -replace "^#\s*", "## "
            }
        }
        
        # Rule 2: Bare URL Wrapping
        # Wrap any http(s) URL that is NOT preceded by ( or [ or < or src=" or href="
        # and NOT followed by ) or >
        if ($line -match "https?://" -and $line -notmatch "<https?://" -and $line -notmatch "\[.*\]\(https?://") {
            $line = [regex]::Replace($line, "(?<![<(\[src=""href=""])(https?://[^\s\)\>\]]+)(?![>\)])", "<$1>")
        }
        
        # Rule 3: Metadata Cleanup
        if ($line -match "^(Last Edited Date|Created Date|Category|Tags|Related POST|Author|Status):") {
            continue # Skip these lines
        }
        
        # Rule 4: Notion-style empty markers or repetitive dividers
        if ($line -match "^---$" -and $fmCount -gt 2) {
            # Check if we should keep it. Some posts use --- as thematic breaks.
            # But the user specifically mentioned removing Notion-style metadata.
            # I'll keep them for now unless they are clearly surrounding metadata.
        }

        $newContent += $line
    }
    
    Set-Content -Path $file.FullName -Value $newContent -Encoding utf8
}
