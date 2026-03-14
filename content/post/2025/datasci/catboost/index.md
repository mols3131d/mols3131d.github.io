---
title: CatBoost
description: Yandex에서 개발한 범주형 변수 처리에 특화된 결정 트리 기반 경사 부스팅 알고리즘, CatBoost의 주요 특징(Ordered Boosting, Symmetric Trees)을 정리합니다.
date: 2025-01-20
categories:
  - DataSci
tags:
  - machine-learning
fmContentType: hugo-content
---

## 개요

Yandex에서 개발한 결정 트리 기반의 경사 부스팅(gradient boosting on decision trees) 알고리즘. 범주형 변수를 효율적으로 처리하는 것으로 알려짐.

## 주요 특징

- **범주형 변수 처리**

  범주형 변수에 별도의 전처리 없이 바로 다룰 수 있다. 타겟 통계(target statistics)를 이용해 범주형 값을 수치화하여 과적합을 줄이고 성능을 향상시킨다.

- **Ordered Boosting**

  전통적인 그라디언트 부스팅은 모든 데이터를 한 번에 사용해 잔차를 계산하지만 이로 인해 예측 편향(prediction shift)이 발생할 수 있음. CatBoost는 매 반복마다 데이터의 랜덤 순열을 생성하고 해당 샘플 이전의 데이터만 사용해 잔차를 계산함으로써 예측 편향를 줄인다.

- **Symmetric Trees (대칭 트리)**

  대칭 트리(symmetric tree)는 모든 리프(leaf)가 같은 깊이에서 동일한 분할 기준을 공유하도록 설계된 균형 이진 트리이다. 대조적으로 일반적인 Leaf-wise Tree Growth 방식은 일부 깊은 리프만 복잡해지기 쉬운데, Symmetric Trees는 모든 리프를 고르게 성장시켜 안정적인 일반화 성능을 제공하는 것이 특징이다.

## Reference

- [캣부스트 @Wikipedia](https://ko.wikipedia.org/wiki/%EC%BA%A3%EB%B6%80%EC%8A%A4%ED%8A%B8)
