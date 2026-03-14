---
name: hugo-theme-stack
description: Expert assistant for the Hugo 'Stack' theme. Trigger this skill whenever the user wants to customize the Stack theme, configure the sidebar, add widgets, set up search, manage menus, or adjust design elements like dark mode and social links. It ensures adherence to the theme's specific configuration patterns.
---

# 🛠️ Skill: Hugo Theme Stack Assistant

이 스킬은 Hugo 'Stack' 테마의 설치, 구성 및 고도화된 커스터마이징을 전문적으로 지원합니다.

## 🎯 When to use this skill

- **테마 설정**: `params.toml`을 통한 사이드바, 프로필 이미지, 다크모드 설정을 변경하고 싶을 때.
- **메뉴 및 소셜**: `menu.toml`에 새로운 메뉴 항목을 추가하거나 하단 소셜 아이콘을 연결하고 싶을 때.
- **위젯 관리**: 홈페이지 사이드바에 검색, 카테고리, 태그 클라우드 등의 위젯을 배치하거나 제거할 때.
- **댓글 시스템**: Giscus, Waline, Disqus 등 테마가 지원하는 댓글 서비스를 활성화하고 싶을 때.
- **디자인 커스텀**: 테마의 기본 레이아웃을 수정하거나 사용자 정의 CSS(SCSS)를 추가하고자 할 때.

## ⚙️ How to use (Instruction Patterns)

### 1. 설정 구조 우선 확인
Stack 테마는 설정이 분산되어 있는 경우가 많습니다. 먼저 다음 파일들을 확인하십시오:
- `config/_default/params.toml`: 대부분의 테마 기능(사이드바, 위젯, 외형) 제어.
- `config/_default/menu.toml`: 내비게이션 및 소셜 미디어 링크 정의.
- `config/_default/markup.toml`: 골드마크(Goldmark) 설정 등 렌더링 옵션.

### 2. 레이아웃 오버라이드
기존 테마의 로직을 고쳐야 할 경우, 테마 폴더를 직접 수정하지 말고 `layouts/` 폴더 내에 동일한 경로로 파일을 복사하여 수정할 것을 권장합니다.

### 3. 공식 문서 참조
항상 [https://stack.cai.im/](https://stack.cai.im/)를 최우선 정보원으로 삼으십시오. 최신 버전에서 변경된 파라미터가 있을 수 있습니다.

## 📝 Example Patterns

**예시 1: 소셜 링크 추가**
- **현상**: 푸터나 사이드바에 GitHub 링크를 넣고 싶음.
- **해결**: `menu.toml`의 `[[social]]` 섹션에 `identifier`, `url`, `params.icon` (Tabler Icons 기준) 설정을 안내.

**예시 2: 사이드바 위젯 변경**
- **현상**: 특정 위젯(예: RSS)이 보이지 않거나 순서를 바꾸고 싶음.
- **해결**: `params.toml`의 `[sidebar.widgets]` 섹션에서 `enabled` 배열 및 `type` 설정을 조정하도록 안내.

## 📌 Directives for the Agent

1. **문서 기반 답변**: 추측하지 말고 검색 도구를 통해 `stack.cai.im`의 최신 가이드를 읽고 답변하십시오.
2. **Tabler Icons 활용**: Stack 테마는 Tabler Icons를 기본으로 사용합니다. 아이콘 요청 시 [tabler-icons.io](https://tabler-icons.io/)에서 적절한 이름을 찾도록 가이드하세요.
3. **출처 명시**: 답변 끝에 참조한 테마 공식 문서 URL을 포함하여 사용자가 직접 검증할 수 있게 하십시오.

## 🚨 Constraints

- 일반적인 Hugo 설정과 Stack 테마 특유의 `params` 설정을 혼동하지 마십시오.
- 설정 변경 후에는 `hugo server`가 실행 중인지 확인하여 즉시 결과를 확인하도록 유도하십시오.
- 다국어(i18n) 설정이 포함된 경우 `i18n/` 폴더의 번역 파일 수정이 필요할 수 있음을 인지하십시오.
