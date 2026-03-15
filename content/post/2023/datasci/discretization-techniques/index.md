---
title: "이산화 (Discretization) 기법: pd.cut() vs pd.qcut()"
date: 2023-03-24T00:00:00Z
description: 연속형 수치 데이터를 불연속적인 구간으로 그룹화하여 모델의 오버피팅을 방지하고 인사이트를 강화하는 이산화 기법
categories:
  - DataSci
tags:
  - _legacy
  - data-science
  - processing
fmContentType: hugo-content
---

## 이산화 (Discretization)란?

연속적인 수치를 일정 기준에 따라 불연속적인 점(점들) 또는 그룹으로 변환하는 것입니다.

## 왜 하는가?

- 머신러닝 모델에 핵심적인 패턴(힌트)을 제공할 수 있습니다.
- 사소한 수치 변화에 민감하게 반응하여 발생하는 오버피팅(Overfitting)을 방지합니다.

## 주요 기법 (Pandas 활용)

## 1. Equal Width Binning (`pd.cut`)

- **기준**: 절대적인 범위를 기준으로 나눕니다.
- **용도**: 구매 금액 구간 등 '절대평가' 성격의 그룹화에 적합합니다.
- **주의**: 편향된 분포(Skewed)일 경우 특정 구간에 데이터가 쏠릴 수 있습니다.

## 2. Equal Frequency Binning (`pd.qcut`)

- **기준**: 데이터의 빈도(비율)를 기준으로 나눕니다.
- **용도**: 성적 상위 5%, 10% 등 '상대평가' 성격의 등급 구분에 적합합니다.
- **장점**: 알고리즘 성능 향상에 더 직접적인 도움을 줄 수 있습니다.

---

## Reference

- [이산화 (Wikipedia)](https://ko.wikipedia.org/wiki/이산화)
- [Pandas cut/qcut Documentation](https://pandas.pydata.org/docs/)
