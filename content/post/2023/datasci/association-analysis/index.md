---
title: "연관 분석 (Association Analysis)"
date: 2023-09-19T00:00:00Z
description: "장바구니 분석으로 알려진 연관 규칙 분석의 평가지표(지지도, 신뢰도, 향상도)와 주요 알고리즘 정리"
categories:
  - DataSci
tags:
  - association-analysis
  - data-mining
  - apriori
  - legacy
fmContentType: hugo-content
---

연관 분석(Association Analysis)은 대량의 데이터에서 항목 간의 관계를 찾아내는 방법으로, '장바구니 분석(Market Basket Analysis)'으로도 잘 알려져 있습니다.

## 평가지표

### 1. Support (지지도)

전체 거래 중 항목 집합(X)이 함께 나타나는 비율입니다.
$$Support(X) = \frac{freq(X)}{N}$$

### 2. Confidence (신뢰도)

항목 X가 구매되었을 때 항목 Y도 함께 구매될 조건부 확률입니다.
$$Confidence(X \Rightarrow Y) = \frac{Support(X, Y)}{Support(X)}$$

## 3. Lift (향상도)

두 항목이 독립일 때 예상 지지도 대비 실제 지지도의 비율입니다. 1보다 크면 양의 연관성이 있음을 의미합니다.
$$Lift(X \Rightarrow Y) = \frac{Support(X, Y)}{Support(X) \times Support(Y)}$$

## 주요 알고리즘

- **Apriori**: "항목 집합이 빈번하면 그 부분 집합도 빈번하다"는 원리를 이용해 탐색 범위를 줄입니다.
- **FP-Growth**: 트리 구조를 사용하여 후보 항목 집합을 생성하지 않고 더 빠르게 빈번한 패턴을 찾습니다.
- **Eclat**: 깊이 우선 탐색(DFS) 기반의 수직 데이터 형식 활용 알고리즘입니다.

---

## Reference

- [연관규칙분석 알고리즘 정리 (ratsgo's blog)](https://ratsgo.github.io/machine%20learning/2017/04/08/apriori/)
