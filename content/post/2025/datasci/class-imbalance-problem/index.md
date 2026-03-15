---
title: 클래스 불균형 문제 (Class Imbalance Problem)
date: 2025-09-03T00:00:00Z
description: 사기 거래 탐지 등 비대칭적인 비중의 데이터를 학습할 때 발생하는 모델 편향과 이를 해결하기 위한 샘플링 및 가중치 전략
categories:
  - DataSci
tags:
  - _legacy
  - data-science
  - machine-learning
fmContentType: hugo-content
---

## 클래스 불균형이란?

분류 대상 데이터 중 특정 클래스의 비중이 극도로 높거나 낮을 때 발생합니다. (예: 99% 정상 거래 vs 1% 사기 거래)

### 주요 문제점

1. **모델 편향(Bias)**: 모델이 단순히 다수 클래스만 맞추는 방향으로 학습되어 소수 클래스를 놓칩니다.
2. **평가지표 왜곡**: 전부 다수 클래스로 예측해도 정확도(Accuracy)는 99%가 나오는 '정확도의 역설'이 발생합니다.

## 해결 방안

### 1. 재표본 (Resampling)

- **Oversampling**: 소수 클래스를 복제하거나 생성합니다 (예: SMOTE).
- **Undersampling**: 다수 클래스 데이터를 일부 제거합니다.

### 2. 알고리즘 레벨

- **클래스 가중치(Class Weights)**: 소수 클래스 오분류 시 더 높은 비용(Loss Penalty)을 부과합니다.
- **Focal Loss**: 맞추기 어려운(어려운 예제)에 가중치를 두어 학습 효율을 높입니다.

### 3. 평가지표 변경

- Accuracy 대신 **F1-score, Precision, Recall, AUC-ROC**를 평가지표로 사용합니다.

---

## Reference

- [다중 클래스 불균형 데이터 처리 (Wikidocs)](https://wikidocs.net/194089)
- [Imbalanced-learn Library](https://github.com/scikit-learn-contrib/imbalanced-learn)
