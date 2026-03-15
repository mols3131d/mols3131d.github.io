---
title: Stacking (스태킹)
date: 2025-09-02T00:00:00Z
description: 여러 모델의 예측 결과(Base Models)를 메타 모델(Meta Model)의 입력 데이터로 사용하여 최종 성능을 개선하는 앙상블 기법인 Stacking(스태킹)을 정리합니다.
categories:
  - DataSci
tags:
  - _legacy
  - ensemble
  - machine-learning
fmContentType: hugo-content
---

여러 모델의 예측을 결합하여 머신러닝 성능을 높일 수 있는 Ensemble기법 중 하나로, Stacking은 기본 모델들의 예측을 가지고 다시 학습하여 최종 예측을 수행한다.

여러 개의 서로 다른 머신러닝 모델(기본 모델, Base Models)의 예측 결과를 다시 학습 데이터로 사용하여 최종 예측을 수행하는 메타 모델(Meta Model)을 학습시킨다.

단일 모델의 한계를 보완하고, 다양한 모델의 강점을 결합해 일반화 성능을 높이는 데 효과적이다. 예측 정확도를 높여야하는 경진 대회나 금융, 의료 분야에서 유용한 것으로 알려져있다.

## See also

[Stacking Ensemble Learning - Beginner's Guide](https://www.kaggle.com/code/anuragbantu/stacking-ensemble-learning-beginner-s-guide)
