---
title: 자연수 n의 약수 찾기 알고리즘
date: 2023-06-03T00:00:00Z
description: O(n)부터 O(sqrt(n))까지, 자연수의 모든 약수를 효율적으로 구하는 방법과 파이썬 예제 코드
categories:
  - CompSci
tags:
  - _legacy
  - algorithm
  - mathematics
  - python
fmContentType: hugo-content
---

## 약수의 정의

어떤 수를 나누어떨어지게 하는 수를 약수(Divisor)라고 합니다.

## 약수 찾기 알고리즘

## 1. 단순 탐색 ($O(n)$)

1부터 시작하여 $n$까지의 모든 수를 조사하는 가장 기본적인 방법입니다.

```python
def find_divisors(n):
    return [i for i in range(1, n + 1) if n % i == 0]
```

## 2. 제곱근 활용 ($O(\sqrt{n})$) - 권장

자연수 $d$가 $n$의 약수라면, $n/d$ 또한 약수입니다. 이 대칭성을 활용하면 제곱근까지만 탐색하여 효율을 극대화할 수 있습니다.

```python
def find_divisors_efficient(n):
    divisors = []
    for i in range(1, int(n ** 0.5) + 1):
        if n % i == 0:
            divisors.append(i)
            if i != n // i:
                divisors.append(n // i)
    return sorted(divisors)
```

## 관련 문제 (프로그래머스)

약수의 합을 구하는 문제는 위 효율적인 방식을 사용해 메모리를 아끼며 해결할 수 있습니다.

```python
def solution(n):
    answer = 0
    for i in range(1, int(n ** 0.5) + 1):
        if n % i == 0:
            answer += i
            if i != n // i:
                answer += n // i
    return answer
```

---

## Reference

- [약수 (Wikipedia)](https://ko.wikipedia.org/wiki/약수)
- [모든 약수 구하기 알고리즘](https://kbw1101.tistory.com/32)
