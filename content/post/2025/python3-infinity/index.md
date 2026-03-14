---
title: "Python3에서 무한대(Infinity) 표현 방법"
description: "코딩 테스트나 알고리즘 문제 풀이 시 필요한 무한대 값을 Python에서 표현하는 세 가지 방법(float, math, sys)을 비교합니다."
date: 2024-12-30
categories:
  - Others
tags:
  - python3
  - infinity
preview: 
draft: false
math: false
fmContentType: hugo-content
---

코딩 테스트나 알고리즘 문제를 풀 때, 특정 값이 "무한대"임을 표현해야 하는 경우가 있습니다. Python에서는 여러 가지 방법으로 무한대 값을 표현할 수 있습니다.

## 1. `float("inf")`

부동소수점으로 '양의 무한대'를 나타냅니다. `-float("inf")`는 '음의 무한대'를 의미합니다. 부동소수점 타입이므로 정수 연산이 필요한 상황에서는 주의가 필요합니다.

```python
positive_infinity = float("inf")
negative_infinity = -float("inf")

print(positive_infinity)  # inf
print(negative_infinity)  # -inf
```

## 2. `math.inf`

`math` 모듈에서 제공하는 무한대 상수입니다. 내부적으로는 `float("inf")`와 동일하게 취급됩니다.

```python
import math

positive_infinity = math.inf
negative_infinity = -math.inf
```

## 3. `sys.maxsize`

`sys.maxsize`는 현재 시스템에서 사용할 수 있는 가장 큰 정수 값입니다. 실제 무한대는 아니지만, 정수 범위 내에서 "매우 큰 값"을 초기값으로 설정할 때 유용합니다.

- **주의**: 시스템마다 값이 다르며 (일반적으로 64비트 시스템에서 $2^{63}-1$), 무한대라는 개념과는 거리가 있습니다.

```python
import sys

max_val = sys.maxsize
print(max_val)  # 9223372036854775807 (64bit)
```

## 요약

| 방법 | 설명 | 타입 |
| :--- | :--- | :--- |
| `float("inf")` | 부동소수점 무한대 표현 | float |
| `math.inf` | `math` 모듈 상수 | float |
| `sys.maxsize` | 시스템 최대 정수 값 | int |
