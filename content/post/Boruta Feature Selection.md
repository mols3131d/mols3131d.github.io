---
draft: false
title: Boruta Feature Selection
aliases:
  - Boruta, 보루타, 보루타 특성 선택
date: 2025-01-15
lastmod: 2025-01-21
expiryDate: 
summary: 
description: Boruta 알고리즘을 활용한 Feature Selection
categories:
  - Data_Sci
tags:
  - feature_selection
image: 
math: false
---

# Boruta Feature Selection

특성 선택은 효율적인 ML을 위해 매우 중요하다. 불필요하거나 관련 없는 특성을 제거함으로써 모델의 성능을 향상시키고, 과적합을 방지하며, 계산 비용을 줄일 수 있다. 이를 위해 다양한 특성 선택 방법론들이 연구되었으며, 그 중 랜덤포레스트의 특성 중요도를 활용하는 방법론도 사용된다. Boruta 알고리즘은 랜덤 포레스트 기반의 방법론으로, 랜덤 포레스트 특성 중요도의 한계를 극복하기 위해 특성 선택 방법이다.

## 랜덤 포레스트 특성 중요도

랜덤 포레스트는 앙상블 학습 방법 중 하나로, 여러 개의 결정 트리를 사용하여 분류나 회귀 분석을 수행하는 알고리즘이다. 각 트리가 학습될 때, 어떤 특성을 사용하여 분기를 수행했을 때 불순도가 얼마나 감소하는지를 측정하여 특성 중요도를 계산하는데, 이를 가지고 모델 예측에 얼마나 큰 영향을 미치는지를 나타내는 지표로 활용할 수 있다.

랜덤 포레스트 특성 중요도로 특성을 선택하는 것에는 몇 가지 한계가 존재한다. 무작위적인 변동으로 인해 특성 중요도 값이 불안정할 수 있다. 심지어, 랜덤 포레스트에서 사용하는 Z 점수는 분포가 정규 분포를 따르지 않기 때문에 특성 중요도의 통계적 유의성을 가진다고 볼 수 없다.

## Boruta 알고리즘

Boruta 알고리즘은 랜덤 포레스트를 기반으로 하는 특성 선택 방법이다. 랜덤 포레스트 특성 중요도는 Z 스코어로 직접적인 측정이 어기 때문에 Boruta 알고리즘에서는 각 속성에 대해 그림자 속성을 생성하고, 어떤 속성이 실제로 중요한지 결정하기 위해 참조된다. 즉, "원본 특성보다 무작위로 생성된 '섀도우 특성'이 모델 생성에 더 큰 영향을 주지 못한다면, 해당 원본 특성은 중요하지 않다"는 것이다.

> 간단히 말해, Boruta는 랜덤 포레스트 분류기의 기본을 이루는 동일한 아이디어, 즉 시스템에 무작위성을 추가하고 무작위화된 샘플 앙상블로부터 결과를 수집함으로써 무작위 변동과 상관관계의 오해의 소지가 있는 영향을 줄일 수 있다는 아이디어를 기반으로 합니다. 여기서 이 추가적인 무작위성은 어떤 속성이 정말로 중요한지에 대한 더 명확한 시각을 제공할 것입니다.
> 
> {refer: [Feature Selection with the Boruta Package](https://doi.org/10.18637/jss.v036.i11), page: 3}

> 보루타 알고리즘은 다음 단계들로 구성됩니다:
> 
> 1. 모든 변수의 복사본을 추가하여 정보 시스템을 확장합니다. (원래 속성 수가 5개 미만이라도 정보 시스템은 항상 최소 5개의 그림자 속성으로 확장됩니다.)
> 2. 추가된 속성을 섞어 반응 변수와의 상관 관계를 제거합니다.
> 3. 확장된 정보 시스템에서 랜덤 포레스트 분류기를 실행하고 계산된 Z 점수를 수집합니다.
> 4. 그림자 속성 중 최대 Z 점수(MZSA)를 찾은 다음, MZSA보다 높은 점수를 받은 모든 속성에 적중 표시를 합니다.
> 5. 중요도가 결정되지 않은 각 속성에 대해 MZSA와의 양측 검정(two-sided test)을 수행하여 동등성을 검사합니다.
> 6. MZSA보다 중요도가 유의하게 낮은 속성은 "중요하지 않음"으로 간주하고 정보 시스템에서 영구적으로 제거합니다.
> 7. MZSA보다 중요도가 유의하게 높은 속성은 "중요함"으로 간주합니다.
> 8. 모든 그림자 속성을 제거합니다.
> 9. 모든 속성의 중요도가 할당될 때까지, 또는 알고리즘이 사전에 설정된 랜덤 포레스트 실행 횟수 제한에 도달할 때까지 위 절차를 반복합니다.
> 
> {refer: [Feature Selection with the Boruta Package](https://doi.org/10.18637/jss.v036.i11), page: 3~4}

---

# Reference
[Feature Selection with the Boruta Package](https://doi.org/10.18637/jss.v036.i11)


# Related
[github.com/scikit-learn-contrib/boruta_py](https://github.com/scikit-learn-contrib/boruta_py?tab=readme-ov-file)

[BorutaPy | danielhomola.com](https://danielhomola.com/feature%20selection/phd/borutapy-an-all-relevant-feature-selection-method/)

---