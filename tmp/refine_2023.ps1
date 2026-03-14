
$baseDir = "m:\workspaces\mols3131d.github.io\content\post\2023"
$files = Get-ChildItem -Path $baseDir -Recurse -Filter "index.md"

foreach ($file in $files) {
    Write-Host "Refining: $($file.FullName)"
    $content = Get-Content -Path $file.FullName -Raw -Encoding utf8
    
    # Split content into lines to handle front matter
    $lines = $content -split "`r`n"
    if ($lines.Length -eq 1) { $lines = $content -split "`n" }
    
    $newLines = @()
    $inFrontMatter = $false
    $fmCount = 0
    
    foreach ($line in $lines) {
        if ($line.Trim() -eq "---") {
            $inFrontMatter = !$inFrontMatter
            $fmCount++
            $newLines += $line
            continue
        }
        
        if ($inFrontMatter) {
            # Rule 4: Tag Standardization (basic)
            if ($line -match "^  - ") {
                $line = $line -replace "_", "-"
            }
            $newLines += $line
            continue
        }
        
        # Rule 1: H1 -> H2
        if ($line -match "^# ") {
            $line = "## " + $line.Substring(2)
        } elseif ($line -match "^#\*\*") {
            $line = "## **" + $line.Substring(3)
        }
        
        # Rule 2: Bare URL Wrapping
        # Simple regex for URLs not in []() or <>
        # This is a bit simpler in PS: look for http and wrap if not already wrapped
        if ($line -match "https?://" -and $line -notmatch "\[.*\]\(.*\)" -and $line -notmatch "<https?://.*>") {
            # Using regex replace to avoid double wrapping
            $line = [regex]::Replace($line, "(?<!\()(?<!src="")(?<!href="")(?<!<)(https?://[^\s\)\>]+)(?![^\(]*\))", "<$1>")
        }
        
        $newLines += $line
    }
    
    $finalContent = $newLines -join "`r`n"
    Set-Content -Path $file.FullName -Value $finalContent -Encoding utf8
}
