
$baseDir = "m:\workspaces\mols3131d.github.io\content\post\2023"
$files = Get-ChildItem -Path $baseDir -Recurse -Filter "index.md"

foreach ($file in $files) {
    Write-Host "Polishing: $($file.FullName)"
    $content = Get-Content -Path $file.FullName -Raw -Encoding utf8
    
    # 1. Aggressive H1 -> H2 replacement (not affecting front matter because of multiline ?m)
    # This replaces any line starting with # (and not ##) with ##
    $content = [regex]::Replace($content, "(?m)^#\s+", "## ")
    
    # 2. Fix double code blocks (e.g. ```python followed by another ```python)
    # This is common in some ab-test style posts
    $content = $content -replace "```python\r?\n```python", "```python"
    
    # 3. Clean up Notion-style labels if they missed the line-by-line pass
    $content = [regex]::Replace($content, "(?m)^(Last Edited Date|Created Date|Category|Tags|Related POST|Author|Status):.*`r?`n", "")
    
    # 4. Standardize Appendix headers if they have extra format
    $content = $content -replace "## \*\*Appendix\*\*", "## Appendix"
    
    Set-Content -Path $file.FullName -Value $content -Encoding utf8
}
