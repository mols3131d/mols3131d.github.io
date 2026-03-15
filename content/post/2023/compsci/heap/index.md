---
title: Heap
date: 2023-06-12T00:00:00Z
description: 최댓값과 최솟값을 빠르게 찾기 위한 완전 이진 트리 기반 자료구조인 힙(Heap)의 개념과 특징 정리
categories:
  - CompSci
tags:
  - _legacy
  - data-structure
fmContentType: hugo-content
---

## Heap (힙)

- **Heap**: 무엇인가를 차곡차곡 쌓아올린 더미를 의미합니다.
- 힙은 항상 **완전 이진 트리**의 형태를 띠어야 하며, 부모의 값은 항상 자식의 값보다 크거나(Max Heap) 작아야(Min Heap) 하는 규칙이 있습니다.
  - 이 특성 덕분에 루트 노드에는 항상 최댓값 또는 최솟값이 저장되어 있어 $O(1)$ 시간 내에 접근이 가능합니다.
- 완전 이진 트리 구조를 사용하는 이유는 삽입과 삭제 연산의 효율성($O(\log n)$) 때문입니다.

## heapq (Python)

파이썬의 `heapq` 모듈은 이진 트리 기반의 최소 힙(Min Heap) 알고리즘을 제공합니다. 모든 부모 노드는 자식보다 작거나 같은 값을 가집니다.

---

## Reference

- [힙 (자료 구조) - 위키백과](<https://ko.wikipedia.org/wiki/힙_(자료_구조)>)
- [힙 트리 - 나무위키](https://namu.wiki/w/%ED%9E%99%20%ED%8A%B8%EB%A6%AC)
