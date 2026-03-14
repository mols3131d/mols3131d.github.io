---
title: "다양한 표본추출 방법 (Sampling Methods)"
date: 2023-07-27T00:00:00Z
description: "단순 랜덤 추출부터 층화 추출까지, 통계적 분석을 위한 다양한 표본 추출 기법 정리"
categories:
  - DataSci
tags:
  - statistics
  - legacy
fmContentType: hugo-content
---

# 표본추출 방법 개요

모집단에서 추출된 표본이 모집단을 잘 대표할 수 있도록 사용하는 다양한 확률적 표본 추출 기법들을 정리합니다.

## 1. 단순 랜덤 추출법 (Simple Random Sampling)
구성 요소 전체에 번호를 부여하고 난수를 이용하여 필요한 만큼 선택하는 가장 기본적인 방식입니다.

## 2. 계통 추출법 (Systematic Sampling)
번호가 부여된 목록에서 일정한 간격($k$번째)으로 표본을 추출하는 방식입니다.

## 3. 집락 추출법 (Cluster Sampling)
모집단을 여러 집단(Cluster)으로 나누고, 선정된 특정 집단 내의 전체 혹은 일부를 조사하는 방식입니다.

## 4. 층화 추출법 (Stratified Sampling)
모집단을 서로 겹치지 않는 여러 층(Strata)으로 나누고, 각 층 내에서 독립적으로 랜덤 추출을 진행하는 방식입니다.
- **비례 층화 추출법**: 각 층의 크기에 비례하여 표본을 배분.
- **불비례 층화 추출법**: 층의 변동성 등을 고려하여 전략적으로 배분.

---

## Reference
- Sampling Techniques in Statistics
