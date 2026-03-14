
import os
import re

def refine_markdown(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    new_lines = []
    in_front_matter = False
    front_matter_count = 0
    
    # Regex for bare URLs that are NOT already in a markdown link or image tag
    # or inside code blocks (simple heuristic)
    url_pattern = re.compile(r'(?<!\()(?<!src=")(?<!href=")(https?://[^\s\)\>]+)(?!\))')

    for line in lines:
        stripped_line = line.strip()
        
        # Track front matter
        if stripped_line == '---':
            in_front_matter = True
            front_matter_count += 1
            if front_matter_count == 2:
                in_front_matter = False
            new_lines.append(line)
            continue
        
        if in_front_matter:
            # Standardize tags if any (basic check)
            if stripped_line.startswith('- '):
                line = line.replace('_', '-')
            new_lines.append(line)
            continue

        # Rule 1: H1 -> H2
        if line.startswith('# '):
            line = '## ' + line[2:]
        elif line.startswith('#**'):
             line = '## **' + line[3:]

        # Rule 2: Wrap Bare URLs (Simple placeholder approach)
        # Avoid lines that are already markdown links [text](url)
        if 'http' in line and '[' not in line and '<' not in line:
            line = url_pattern.sub(r'<\1>', line)

        new_lines.append(line)

    with open(file_path, 'w', encoding='utf-8') as f:
        f.writelines(new_lines)

# Process all 2023 index.md files
base_dir = r"m:\workspaces\mols3131d.github.io\content\post\2023"
for root, dirs, files in os.walk(base_dir):
    for file in files:
        if file == 'index.md':
            file_path = os.path.join(root, file)
            print(f"Refining: {file_path}")
            refine_markdown(file_path)
