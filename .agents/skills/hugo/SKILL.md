---
name: hugo
description: Expert guide for the Hugo static site generator. Trigger this skill whenever the user asks about building, configuring, or managing a Hugo project, creating new content with 'hugo new', using Hugo Modules, or troubleshooting CLI commands. It covers both standard and extended editions.
---

# 🛠️ Skill: Hugo Core Assistant

이 스킬은 Hugo 정적 사이트 생성기를 사용하여 사이트를 구축, 관리 및 최적화하는 데 필요한 모든 지식과 CLI 도구 활용법을 제공합니다.

## 🎯 When to use this skill

- Hugo 프로젝트를 처음 설정하거나 기존 설정을 수정할 때
- 새로운 포스트나 페이지를 생성(`hugo new`)하고자 할 때
- 로컬 개발 서버(`hugo server`) 실행 중 에러가 발생하거나 옵션 설명이 필요할 때
- 사이트를 정식 빌드(`hugo build`)하고 성능을 최적화하고 싶을 때
- Hugo Modules(`hugo mod`)를 사용하여 테마나 종속성을 관리할 때
- `draft: true` 상태인 글이 보이지 않는 등 콘텐츠 가시성 문제를 해결할 때

## ⚙️ How to use (Instruction Patterns)

### 1. 개발 환경 점검 및 진단
단순히 설정을 추측하기보다 아래 명령어를 통해 실제 적용된 값을 확인하십시오:
- `hugo config`: 현재 활성화된 모든 설정값(기본값 포함)을 덤프하여 충돌이나 오설정을 찾아냅니다.
- `hugo env`: 버전 및 설치된 Edition(Extended 여부)을 확인하여 호환성을 체크합니다.

### 2. 효율적인 콘텐츠 관리
- 신규 파일 생성 시 `hugo new posts/my-post.md`와 같이 경로를 명시하여 아키타입이 적용되도록 합니다.
- `hugo list future`나 `hugo list drafts`를 통해 예약 발행물이나 초안 상태를 한눈에 파악할 것을 권장합니다.

### 3. 빌드 및 배포 최적화
- **로컬 테스트**: 반드시 `hugo server -D`를 사용하여 초안을 포함한 실시간 결과물을 확인하십시오.
- **최종 빌드**: 배포 직전에는 `hugo --gc --minify`를 사용하여 불필요한 캐시를 제거하고 출력 결과물(HTML, CSS, JS)을 압축하십시오.

### 4. 모듈 및 종속성 관리
- 테마 업데이트 시 `hugo mod get -u [module-path]`를 사용합니다.
- 사용하지 않는 모듈을 정리하기 위해 주기적으로 `hugo mod tidy` 실행을 제안하십시오.

## 📝 Example Patterns

**예시 1: 초안이 보이지 않을 때**
- **현상**: `content/`에 파일을 만들었는데 브라우저에 안 나옴.
- **해결**: `hugo server -D` 명령어를 쓰거나, 프론트매터에서 `draft: false`로 수정을 제안.

**예시 2: 테마 설정이 적용되지 않을 때**
- **현상**: `hugo.toml`을 고쳤는데 반영이 안 됨.
- **분석**: `hugo config`를 실행하여 오버라이드된 설정이 있는지 확인.

## 📌 Directives for the Agent

1. **이론보다 검증**: 사용자에게 설정을 제안하기 전, 가능하면 `hugo config`로 현재 상태를 먼저 조회하게 하세요.
2. **왜(Why)를 설명**: 특정 플래그(예: `-D`, `--gc`) 사용을 권장할 때는 그로 인한 이점(미리보기, 용량 최적화 등)을 함께 설명하세요.
3. **버전 호환성**: Hugo는 업데이트가 잦습니다. 최신 문법과 구버전 문법(예: `.Site.Params` vs `site.Params`)을 구분하여 안내하세요.

## 🚨 Constraints

- Hugo 코어 기능과 특정 테마(예: Stack 테마)의 전용 파라미터를 명확히 구분하십시오.
- 절대 경로보다는 상대 경로 사용을 권장하여 프로젝트 이식성을 높이십시오.
