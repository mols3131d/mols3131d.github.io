---
name: vscode-front-matter-cms
description: Expert guide for the 'Front Matter CMS' VS Code extension. Trigger this skill whenever the user wants to manage Markdown front matter metadata, configure content types, define custom fields, set up taxonomies (tags/categories), or modify 'frontmatter.json' settings. It helps maintain consistency between Hugo metadata and the VS Code CMS interface.
---

# 🛠️ Skill: VS Code Front Matter CMS Assistant

이 스킬은 VS Code의 **Front Matter CMS** 확장을 사용하여 마크다운 파일의 메타데이터(Front Matter)를 효율적으로 관리하고 최적화하는 데 필요한 지침을 제공합니다.

## 🎯 When to use this skill

- **설정 파일 수정**: 프로젝트 루트의 `frontmatter.json` 파일을 업데이트하여 CMS 동작을 변경하고 싶을 때.
- **콘텐츠 타입(Content Types) 정의**: 새로운 포스트 형식을 위해 필드(제목, 날짜, 설명 등)를 추가하거나 수정할 때.
- **플레이스홀더 활용**: 날짜 자동 입력(`{{now}}`)이나 파일명 기반 제목 등 자동화 설정을 구성할 때.
- **페이지 폴더 관리**: CMS가 스캔할 `content/` 폴더 경로(`frontMatter.content.pageFolders`)를 추가/제정의할 때.
- **미리보기 설정**: CMS 내에서 실시간 미리보기를 위한 호스트(`preview.host`) 및 경로 설정을 수정할 때.

## ⚙️ How to use (Instruction Patterns)

### 1. `frontmatter.json` 구조 관리
모든 설정은 프로젝트 루트의 `frontmatter.json`에서 관리됩니다.
- `frontMatter.taxonomy.contentTypes`: 각 페이지 타입(게시글, 페이지 등)에 나타날 UI 필드를 정의합니다.
- `fields`: 각 필드의 `type`(string, datetime, image, tags, categories, draft 등)과 `name`을 Hugo 테마 스펙에 맞게 정렬하십시오.

### 2. 필드 타입 최적화
- **날짜**: `"type": "datetime"`과 `"isPublishDate": true`를 설정하여 발행일을 관리합니다.
- **초안**: `"type": "draft"`를 사용하여 Hugo의 `draft: true/false`와 연동합니다.
- **이미지**: `"type": "image"`를 사용하여 CMS 이미지 브라우저를 활성화합니다.

### 3. 프레임워크 통합
- `frontMatter.framework.id`: 현재 `hugo`로 설정되어 있는지 확인하여 관련 최적화 기능을 활성화합니다.
- `preview.host`: `http://localhost:1313`과 같이 로컬 개발 서버 주소를 정확히 입력하여 실시간 미리보기를 연동합니다.

## 📝 Example Patterns

**예시 1: 새로운 필드 추가 (예: SEO 키워드)**
```json
{
  "title": "Keywords",
  "name": "keywords",
  "type": "string"
}
```
위 내용을 `contentTypes[].fields` 배열에 추가하여 CMS 관리 화면에 나타나게 합니다.

**예시 2: 다른 콘텐츠 폴더 추가 (예: 프로젝트)**
```json
{
  "title": "projects",
  "path": "[[workspace]]/content/projects"
}
```
`frontMatter.content.pageFolders`에 추가하여 CMS 대시보드에서 프로젝트 목록을 관리하도록 합니다.

## 📌 Directives for the Agent

1. **스키마 준수**: `frontmatter.json`을 수정할 때 상단의 `$schema`를 참조하여 유효한 JSON 구조를 유지하십시오.
2. **테마 호환성**: 필드 이름을 정할 때는 반드시 현재 적용된 Hugo 테마(예: Stack 테마)가 인식하는 프론트매터 키 값을 사용해야 합니다.
3. **사용자 경험(UX)**: `title` 속성은 CMS UI에 표시되는 한글/영문 설명이며, `name` 속성은 실제 마크다운 파일에 저장되는 기술적인 키 이름임을 구분하여 안내하십시오.

## 🚨 Constraints

- `[[workspace]]` 플레이스홀더를 사용하여 경로의 이식성을 유지하십시오.
- `frontmatter.json` 수정 후에는 VS Code에서 CMS 대시보드가 자동으로 갱신되는지 확인하도록 안내하십시오.
- Hugo의 기본 Archetypes와 Front Matter CMS의 Content Types가 서로 충돌하지 않도록 정합성을 맞추십시오.
