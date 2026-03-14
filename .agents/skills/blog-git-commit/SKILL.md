---
name: blog-git-commit
description: Git commit guide for blog maintenance; Use when committing blog content or blog system changes; blog, git, commit, convention
---

# Blog Git Commit

## Guidelines

- **Format**: `<type>(<scope>): <subject>`
- **Limit**: Max 50 chars. One-liner only (No Body/Footer).

## Types & Scopes

### [Content] - 포스트 관리

- **`create`**: New post.
- **`update`**: Content edit/refine.
- **`fix`**: Typo/link fix.
- **`delete`**: Permanent removal.
- **`archive`**: Draft/Invisible (logical removal).
- **`move`**: Folding/Path change.
- **Scope**: Lowercase category (e.g., `python`, `git`).

### [Page] - 시스템 관리

- **`config`**: Hugo/CMS settings.
- **`feat`**: UI/Theme features.
- **`chore`**: Maintenance/Meltadata cleanup.
- **Scope**: Tech domain (e.g., `theme`, `cms`, `agent`).

## Examples

- `create(python): add list comprehension guide`
- `move(git): fold posts to 2024`
- `config(theme): set since year 2023`
