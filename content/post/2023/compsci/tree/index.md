---
title: Tree
date: 2023-06-12T00:00:00Z
description: 노드와 간선으로 이루어진 계층적 자료구조인 트리(Tree)의 정의, 특징 및 주요 용어 정리
categories:
  - CompSci
tags:
  - _legacy
  - data-structure
fmContentType: hugo-content
---

## Tree (트리)

- 정의
  - node와 edge로 이루어진 자료 구조
  - 그래프 중 하나
  - 계층적
  - 비선형적
- 특징
  - tree의 size가 N일때, edge의 개수는 N-1개
  - 한 개의 root node가 존재
  - 모든 자식노드는 하나의 부모노드를 가짐.
  - 순회는 Pre-order, In-order, Post-order로 이루어진다.
  - 싸이클이 존재하지 않음.
- 용어

  | 용어      | 설명                    | 비고               |
  | --------- | ----------------------- | ------------------ |
  | node      |                         | aka. vertex (정점) |
  | root node | 부모가 없는 최상의 node |                    |
  | leaf node | 자식이 없는 최하의 node |                    |
  | size      | 트리의 모든 node의 개수 |                    |
  | depth     | root node로 부터의 거리 |                    |
  | height    | depth의 최대값          |                    |
  | degree    | 각 node의 간선 개수     |                    |
  | edge      | node와 node사이의 선    | aka. 간선          |

---

## Reference

[[Python & Data Structure] Tree](https://duckracoon.tistory.com/entry/Python-Data-Structure-Tree)
