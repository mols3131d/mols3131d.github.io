---
title: "이상치 처리 (Outlier Processing) 가이드"
date: 2023-05-27T00:00:00Z
description: "데이터 분포를 왜곡하는 이상치를 탐지하는 기준과 삭제, 대치, 스케일링 등의 처리 기법 정리"
categories:
  - DataSci
tags:
  - data-preprocessing
  - statistics
  - legacy
fmContentType: hugo-content
---

## 이상치 탐지 기준
무엇을 '이상치'로 볼 것인지 결정하는 과정입니다.

1. **표준편차**: 데이터가 정규분포를 따를 때, 보통 $\pm 3\sigma$를 벗어나는 값을 이상치로 간주합니다.
2. **IQR (Interquartile Range)**: 정규분포를 따르지 않을 때 주로 사용하며, $(Q1 - 1.5 \times IQR)$ 미만 또는 $(Q3 + 1.5 \times IQR)$ 초과 값을 이상치로 봅니다.

## 이상치 처리 방법

- **삭제**: 전체 데이터 규모가 충분히 클 때 고려합니다.
- **대치(Imputation)**: 
    - 평균(mean), 중앙값(median), 최빈값(mode) 사용
    - 회귀 분석을 통한 동적 대치
    - Binning (범주화)
- **변환(Transformation)**: 로그변환($log$)이나 제곱근 변환 등을 통해 극단값의 영향을 완화합니다.

---

## Conclusion
이상치는 단순한 오류일 수도 있지만, 새로운 인사이트가 담긴 신호일 수도 있습니다. 무작정 삭제하기보다 도메인 지식을 활용한 신중한 판단이 필요합니다.

---

## Reference
- Outlier detection methods in Statistics


