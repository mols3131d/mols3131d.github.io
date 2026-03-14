---
title: "순환형 피처 인코딩 (Cyclical Features Encoding)"
date: 2025-01-22T00:00:00Z
description: "시간, 요일 같이 끝과 시작이 연결된 순환적 성격을 가진 데이터의 특징을 유지하며 인코딩하는 방법"
categories:
  - DataSci
tags:
  - feature-engineering
  - deep-learning
  - legacy
fmContentType: hugo-content
---

# 순환형 피처 (Cyclical Features)
시간(0~23), 요일(0~6)과 같은 데이터는 0과 가장 큰 값 사이의 물리적 거리가 1로 매우 가깝습니다. 하지만 일반적인 인코딩을 적용하면 이 관계가 소실됩니다.

이를 해결하기 위해 $sin, cos$ 함수를 이용한 변환 기법이 주로 활용됩니다.

---

## Reference
- [Encoding Cyclical Features for Deep Learning (Kaggle)](https://www.kaggle.com/code/avanwyk/encoding-cyclical-features-for-deep-learning)
