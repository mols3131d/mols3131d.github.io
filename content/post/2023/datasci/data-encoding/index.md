---
title: "데이터 인코딩 (Data Encoding)의 필요성"
date: 2023-03-24T00:00:00Z
description: "범주형 데이터를 머신러닝 모델이 이해할 수 있는 수치형 데이터로 변환하는 인코딩 과정의 중요성"
categories:
  - DataSci
tags:
  - data-preprocessing
  - machine-learning
  - legacy
fmContentType: hugo-content
---

## 인코딩 개요

데이터 인코딩은 범주형(Categorical) 데이터를 수치형(Numerical) 데이터로 변환하는 필수적인 과정입니다.

## 왜 필요한가?

1. **머신러닝 모델 입력**: 선형 회귀, 딥러닝 등 대부분의 알고리즘은 문자열 또는 범주형 데이터를 직접 처리할 수 없습니다.
2. **데이터 시각화**: 산점도(Scatter plot)나 선 그래프(Line plot) 등 수치 축이 필요한 시각화 도구 활용에 유리합니다.
3. **효율성**: 수치형 데이터는 저장 공간을 덜 차지하며 연산 속도가 빠릅니다.

> [!NOTE]
> 최근의 일부 알고리즘(예: CatBoost)은 인코딩 과정을 내부에 포함하고 있어 직접 수행하지 않아도 되는 경우가 있습니다.

---

## Reference

- Scikit-learn Preprocessing Documentation
