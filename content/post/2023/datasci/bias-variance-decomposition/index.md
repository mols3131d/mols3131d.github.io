---
title: 편향-분산 분해 (Bias-Variance Decomposition)
date: 2023-10-11T00:00:00Z
description: 모델의 오차를 편향, 분산, 그리고 줄일 수 없는 노이즈로 분해하여 이해하는 머신러닝 핵심 개념
categories:
  - DataSci
tags:
  - _legacy
  - data-science
  - machine-learning
fmContentType: hugo-content
---

## 오차의 구성 요소

머신러닝 모델의 총 예측 오차는 크게 세 가지로 분해할 수 있습니다.

1. **편향 (Bias)**: 모델의 예측값이 실제값에서 멀리 떨어진 정도. 높은 편향은 모델이 단순해서 생기는 **과소적합(Underfitting)**을 유발합니다.
2. **분산 (Variance)**: 데이터의 변화에 모델이 얼마나 민감하게 반응하는지. 높은 분산은 데이터의 노이즈까지 학습하여 생기는 **과대적합(Overfitting)**을 유발합니다.
3. **줄일 수 없는 오차 (Irreducible Error)**: 데이터 자체에 포함된 근본적인 노이즈입니다.

## 편향-분산 트레이드오프 (Tradeoff)

- 모델이 복잡해질수록 Bias는 낮아지지만 Variance는 높아집니다.
- 모델이 단순해질수록 Variance는 낮아지지만 Bias는 높아집니다.
- 우리는 이 둘의 합이 최소가 되는 지점을 찾아야 합니다.

---

## Reference

- [Bias-Variance Decomposition (ratsgo's blog)](https://ratsgo.github.io/machine%20learning/2017/05/19/biasvar/)
