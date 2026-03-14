---
title: "데이터 스케일링 (Data Scaling) 기법 총정리"
date: 2023-03-24T00:00:00Z
description: "Standardization, Min-Max, Robust Scaling의 차이점과 모델 성능 향상을 위한 스케일링 전략 가이드"
categories:
  - DataSci
tags:
  - data-preprocessing
  - machine-learning
  - legacy
fmContentType: hugo-content
---

## 데이터 스케일링의 목적

데이터의 범위를 조정하여 변수 간의 단위 차이를 극복하는 과정입니다. 이를 통해 알고리즘의 동작 속도가 빨라지고 성능이 향상될 수 있습니다.

> [!TIP]
> 결정 트리 기반 모델(XGBoost, RandomForest 등)은 데이터의 상대적 크기에 영향을 받으므로 스케일링이 필수적이지 않습니다.

## 주요 스케일링 기법

## 1. 표준화 (Standardization / Z-score Scaling)

평균을 0, 표준편차를 1로 맞춘 표준정규분포 형태로 변환합니다.

- 공식: $z = \frac{(X - \mu)}{\sigma}$
- **주의**: 평균을 사용하므로 이상치(Outlier)에 민감하게 영향을 받습니다.

## 2. Min-Max Scaling

데이터를 [0, 1] 사이의 지정된 범위로 변환합니다.

- 공식: $X_{scaled} = \frac{(X - X_{min})}{(X_{max} - X_{min})}$
- **특징**: 상한과 하한이 뚜렷하지만, 이상치가 포함될 경우 정상 데이터가 좁은 범위에 압축될 위험이 있습니다.

## 3. Robust Scaling

평균 대신 **중간값(Median)**을, 표준편차 대신 **IQR(Q3-Q1)**을 사용하여 분산을 조정합니다.

- 공식: $X_{scaled} = \frac{(X - Median)}{IQR}$
- **장점**: 이상치의 영향을 최소화하면서도 전체적인 데이터 분포를 유지하는 데 탁월합니다.

---

## Reference

- Z-score, Min-Max, Robust Scaling comparisons
- Scikit-learn Scales Documentation
