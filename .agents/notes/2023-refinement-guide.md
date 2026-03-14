
# 2023 Refinement Guideline
2023년도 포스트 71개에 대한 정밀 다듬기 작업을 수행합니다.

## Refinement Rules
1. **H1 -> H2 Transformation**:
   - 본문 내의 `# Heading`을 `## Heading`으로 변경합니다.
   - 단, 프론트매터 외부의 첫 번째 나타나는 `#`부터 적용합니다.
2. **Bare URL Wrapping**:
   - `https://...` 형식의 URL이 `[text](url)` 형태가 아닌 경우 `<url>`로 감쌉니다.
3. **Metadata Cleanup**:
   - 프론트매터 외부(본문 상단 또는 하단)에 남은 노션 속성(Category, Tag, Date 등)을 제거합니다.
4. **Tag Standardization**:
   - `data_structure` -> `data-structure`
   - `data_analysis` -> `data-analysis`
   - `coding_test` -> `coding-test`
   - 모든 태그는 소문자 및 하이픈 형태를 유지합니다.
5. **Code Block Language**:
   - 구문 강조가 없는 코드 블록에 적절한 언어(python, text, bash 등)를 지정합니다.

## Process
1. **Batch Update**: 스크립트를 사용하여 H1->H2 및 URL 래핑을 일괄 처리합니다.
2. **Manual Cleanup**: 에셋 경로, 중첩된 메타데이터, 태그 표준화를 수동으로 보완합니다.
3. **Verification**: `hugo server`를 통해 렌더링을 최종 확인합니다.
