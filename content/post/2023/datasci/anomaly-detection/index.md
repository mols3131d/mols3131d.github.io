---
title: "이상 탐지 (Anomaly Detection) 방법론"
date: 2023-05-15T00:00:00Z
description: "IQR, 표준편차 등 통계적 기법부터 머신러닝 모델까지 다양한 이상 탐지 기법 정리"
categories:
  - DataSci
tags:
  - statistics
  - anomaly-detection
  - machine-learning
  - legacy
fmContentType: hugo-content
---

이상 탐지(Anomaly Detection)는 대부분의 데이터에서 크게 벗어난 비정상적인 관찰치를 식별하는 기술입니다. 이는 결함 감지나 소비자 행동 변화 감지 등에 활용됩니다.

## **통계적 기법**

### 1. IQR (Interquartile Range) Method

사분위수를 활용하여 이상치 범위를 정합니다.

- $Lower \, limit = Q_1 - 1.5 \times IQR$
- $Upper \, limit = Q_3 + 1.5 \times IQR$
  위 범위를 벗어나는 데이터를 이상치로 간주합니다.

### 2. SDM (Standard Deviation Method)

평균과 표준편차를 활용합니다. 보통 평균에서 $\pm 3\sigma$를 벗어나는 지점을 기준점으로 삼습니다.

## **머신러닝 방법론**

- **Gaussian Mixture Models**: 데이터를 두 개 이상의 정규 분포(정상 vs 비정상)의 조합으로 추정합니다.
- **Isolation Forest**: 의사 결정 트리를 이용해 데이터 포인트를 고립(Isolate)시키며, 적은 분할로 고립되는 지점을 이상치로 판단합니다.
- **Local Outlier Factor (LOF)**: 주변 이웃과의 밀도를 비교하여 국소적인 이상 정도를 파악합니다.

그 외에도 윈저화(Winsorization), 클러스터링 기반 탐지 등 다양한 방법이 존재합니다.

---

## Reference

- [Local Outlier Factor (Wikipedia)](https://en.wikipedia.org/wiki/Local_outlier_factor)
- [이상 탐지 기술 가이드 (Towards Data Science)](https://towardsdatascience.com/outlier-detection-part1-821d714524c)
- [통계적 기법으로 이상 탐지하기 (NHN Cloud)](https://meetup.nhncloud.com/posts/366)
