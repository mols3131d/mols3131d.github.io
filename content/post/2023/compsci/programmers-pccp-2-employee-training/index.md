---
title: "[PCCP 모의고사 #2] 신입사원 교육 | 프로그래머스, Python3"
date: 2023-07-10T00:00:00Z
description: "프로그래머스 PCCP 모의고사 #2 신입사원 교육 문제 풀이 및 힙(Heap) 활용 방법 정리"
categories:
  - CompSci
tags:
  - coding-test
  - python
  - heap
  - legacy
fmContentType: hugo-content
---

## 문제 풀이 요약

문제 링크: [신입사원 교육](https://school.programmers.co.kr/learn/courses/15009/lessons/121688)

문제가 어려워서 정리했다기 보다는 아직 이 문제에 대한 글이 적길래 적어본다.

## 시도1

문제 설명에 아래의 내용이 있어서 `ability`의 요소를 `(elem, 1)`처럼 해서 교육 횟수의 제한을 구분하려 했는데, 정작 교육 횟수의 제한은 없었다.

> (...) 이때 **한번** 민수에게 선발된 사원이 다시 선발될 수도 있습니다. (...)

```python
import heapq

def solution(ability, number):
    answer = 0
    for i, a in enumerate(ability):
        answer += a
        ability[i] = (a, 1)

    heapq.heapify(ability)

    while number:
        number -= 1

        a = heapq.heappop(ability)
        b = heapq.heappop(ability)

        answer += a[0] + b[0]

        for i in [a, b]:
            if i[1] == 1:
                heapq.heappush(ability, (a[0] + b[0], 0))

    return answer
```

## 정답

```python
import heapq

def solution(ability, number):
    answer = 0
    heapq.heapify(ability)

    for i, a in enumerate(ability):
        answer += a

    while number:
        number -= 1

        a = heapq.heappop(ability)
        b = heapq.heappop(ability)

        answer += a + b

        for i in [a, b]:
            heapq.heappush(ability, a + b)

    return answer
```
