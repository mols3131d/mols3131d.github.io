---
name: blog-content-post
description: Blog content management; creating, editing, and migrating Hugo posts; blog, content, post, article
---

# Blog Content Post

- path: `content/post/**`
- Tools: `hugo`, `Front Matter CMS`

## Use When

- 신규 콘텐츠 작성
- 기존 콘텐츠 수정
- 레거시 콘텐츠 마이그레이션
- 포스트 콘텐츠 파일 관리
- Front Matter (Fields) 관리

## Language

한국어를 중심으로 영어와 혼용한다. (전문용어는 영어 선호)

## Legacy Content Migration

다른 블로그에서 작성한 콘텐츠들을 현재 구조에 맞게 편집해야한다. 주로 프론트매터를 수정하는 작업한다.

이 때, `lastmod`와 같은 수정한 날짜를 바꾸지 않도록 주의한다.

## Post Content Management

- **Yearly Archiving**: 기본적으로 년도별로 콘텐츠를 보관합니다.
  - 당해 연도(올해)의 포스트는 `content/post/` 폴더 내에 저장합니다.
  - 연도가 지난 포스트는 `content/post/YYYY/` 폴더로 이동하여 아카이빙합니다.
- **Directory Partitioning**: 특정 년도 폴더 내의 콘텐츠가 **30개**를 초과할 경우, **제 1 카테고리**(첫 번째 카테고리)를 기준으로 하위 폴더를 생성하여 관리합니다.
  - 예: `content/post/2025/data-sci/index.md`

## Front Matter (Fields) Management

- Hugo, Front Matter CMS의 프론트매터에 호환되어야한다.
  - See `frontmatter.json`: `frontMatter.taxonomy.contentTypes`: `default`: `fields`

이 프로젝트는 YAML 형식을 사용하며, 다음 스키마를 준수합니다:

| `name`          | `type`       | 특징                                           |
| :-------------- | :----------- | :--------------------------------------------- |
| `title`         | `string`     | required. 메인 제목                            |
| `description`   | `string`     | required. 콘텐츠 요약 및 SEO                   |
| `date`          | `datetime`   | required. `{{now}}`로 자동 생성                |
| `lastmod`       | `datetime`   | 최종 수정 시각                                 |
| `categories`    | `categories` | 분류 (`/taxonomyDb.json` 참조)                 |
| `tags`          | `tags`       | 세부 키워드 (`/taxonomyDb.json` 참조)          |
| `preview`       | `image`      | 대시보드 및 목록용 이미지                      |
| `draft`         | `draft`      | default: `false`. `true`일 경우 비공개         |
| `math`          | `boolean`    | default: `false`. 수식 활성화 (`true`/`false`) |
| `fmContentType` | `string`     | required. `hugo-content` 고정                  |

> [!IMPORTANT]
> `fmContentType`은 Front Matter CMS 확장이 이 파일을 인식하고 관리하기 위해 필요한 전용 필드입니다. Hugo 빌드에는 영향을 주지 않지만, CMS 기능을 유지하기 위해 **마크다운 파일 생성 시 반드시 포함**되어야 합니다.

### categories

- **Conservative Approach**: 카테고리는 보수적으로 최소화하여 운영하며, 가급적 **1개**만 사용하는 것을 권장합니다.
- **Indexing Focus**: 1개 초과가 필요한 경우, 해당 콘텐츠를 분류하고 찾는 **사람의 인덱싱 관점**에서 가치가 있을 때만 신중히 추가합니다.
- **First Category**: 물리적 저장 위치(`Directory Partitioning`)의 기준. 핵심 분류를 첫 번째 배치.
- References: `content/categories`, `taxonomyDb.json`

### tags

- **Formatting**: 소문자만 사용, 공백은 하이픈(`-`)으로 대체.
- **Naming Convention**: 전문 용어는 가급적 **영문**을 사용하며, 상황에 따라 다음을 선택합니다:
  - **ko**: 한글 고유 명사나 한글이 더 친숙한 경우.
  - **en**: 일반적인 프로그래밍/데이터 사이언스 전문 용어.
  - **ko--en**: 한글 용어와 영문 병기가 필요한 경우 (ex: `머신러닝--machine-learning`).
- Reference: `taxonomyDb.json`
