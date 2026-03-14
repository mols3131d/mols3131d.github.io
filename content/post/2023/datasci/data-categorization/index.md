---
title: "데이터 범주화 (Data Categorization) 방법론"
date: 2023-05-18T00:00:00Z
description: "수치형 데이터를 의미 있는 그룹으로 묶어 분석 효율을 높이는 데이터 범주화의 목적과 세 가지 주요 방법론 정리"
categories:
  - DataSci
tags:
  - data-science
  - processing
  - legacy
fmContentType: hugo-content
---

## 데이터 범주화란?

데이터 범주화(Categorization)는 데이터를 의미 있는 그룹이나 범주로 분류하는 것을 말합니다. 이는 데이터 분석 및 처리를 용이하게 하고, 복잡한 패턴을 간결하게 설명하는 데 도움을 줍니다.

- **Data Encoding과 차이**: Encoding은 범주형을 수치형으로 바꾸는 반면, Categorization는 수치형 등을 범주형 데이터로 변환합니다.
- **Classification과 유사성**: 특정 기준에 따라 그룹을 할당한다는 점에서 분류와 맞닿아 있습니다.

## 주요 방법론

1. **빈도 기반 (Frequency-based)**: 항목의 발생 빈도 수에 따라 대표적인 범주로 할당합니다. 가장 직관적인 방식입니다.
2. **경계 값 기반 (Boundary-based)**: 특정 수치를 기준으로 구간을 나눕니다. (예: 연령대 구분 등)
3. **전문가 판단 기반 (Expert Judgment-based)**: 도메인 지식과 경험을 활용하여 객관적 표준이나 전문가의 의견에 따라 분류합니다.

---

## Conclusion

적절한 범주화는 데이터의 원래 의미를 훼손하지 않으면서 분석의 가독성을 높이는 핵심적인 작업입니다.

---

## Reference

- Data Preprocessing Techniques
