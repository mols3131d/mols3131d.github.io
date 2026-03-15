---
title: Python3 재귀 호출 깊이 제한 및 조정 방법
description: Python의 재귀 호출 제한(Recursion Limit)의 목적과 확인 방법, 그리고 필요 시 이를 조정하는 방법을 알아봅니다.
date: 2024-12-30
categories:
  - Other
tags:
  - _legacy
  - python
  - recursion-limit
preview: null
draft: false
math: false
fmContentType: hugo-content
---

Python은 시스템 안정성을 위해 재귀 호출의 깊이에 제한을 두고 있습니다. 이는 무한 재귀로 인한 **스택 오버플로(Stack Overflow)**를 방지하기 위한 조치입니다.

## 재귀 호출 제한 확인

현재 설정된 재귀 호출 제한 값은 `sys` 모듈을 통해 확인할 수 있습니다.

```python
import sys

# 기본 제한 값 확인 (보통 1000 혹은 3000)
print(sys.getrecursionlimit())
```

## 재귀 호출 제한 조정

깊은 트리 탐색이나 복잡한 재귀 알고리즘을 구현할 때, 기본 제한 값을 초과하여 `RecursionError`가 발생할 수 있습니다. 이럴 경우 제한 값을 늘려줄 수 있습니다.

```python
import sys

# 재귀 제한을 1,000,000으로 하향 조정 (또는 상향)
sys.setrecursionlimit(10**6)

print(sys.getrecursionlimit()) # 1000000
```

- **주의**: 제한을 너무 크게 설정하면 실제 메모리 부족으로 인한 프로그램 비정상 종료가 발생할 수 있으므로, 알고리즘 최적화나 반복문(Iterative) 방식으로의 전환을 먼저 고려하는 것이 좋습니다.
