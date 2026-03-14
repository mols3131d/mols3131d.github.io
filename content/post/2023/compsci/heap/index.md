---
title: Heap
date: 2023-06-12T00:00:00Z
description: ""
categories:
  - CompSci
tags:
  - legacy
  - data_structure
fmContentType: hugo-content
---

![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Max-Heap.svg/800px-Max-Heap.svg.png)

# Heap

Heap tree

---

- heap : 무엇인가를 차곡차곡 쌓아올린 더미
- 힙은 항상 완전 이진 트리의 형태를 띠어야 하고, 부모의 값은 항상 자식(들)의 값보다 크거나(Max heap 최대 힙), 작아야(Min heap 최소 힙)하는 규칙이 있다.
    - 따라서 루트노드에는 항상 데이터들 중 가장 큰 값(혹은 가장 작은 값)이 저장되어 있기 때문에, 최댓값(혹은 최솟값)을 O(1)안에 찾을 수 있다.
- 단순히 최댓값(최솟값)을 O(1)안에 찾기 위해서라면 "항상 완전 이진 트리의 형태여야 한다"는 조건을 만족시킬 필요는 없다.
    - 완전 이진 트리를 사용하는 이유는 삽입/삭제의 속도 때문이다.
    - 물론 '힙 트리'는 정의상 완전 이진 트리를 사용하는 트리다.
        - 달리 다른 구조를 사용한다 해도 전혀 얻을게 없는 최적의 구조이기 때문.

# heapq

우선순위 큐 알고리즘이라고도 하는 힙(heap) 큐 알고리즘.

힙은 모든 부모 노드가 자식보다 작거나 같은 값을 갖는 이진 트리.

---

# **Appendix**

## Reference

[힙 (자료 구조)](https://ko.wikipedia.org/wiki/힙_(자료_구조))

[](https://namu.wiki/w/%ED%9E%99%20%ED%8A%B8%EB%A6%AC)
