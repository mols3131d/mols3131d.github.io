---
title: Floyd-Warshall Algorithm
date: 2023-12-23T00:00:00Z
description: "그래프의 모든 정점 쌍 간의 최단 경로를 구하는 플로이드-워셜 알고리즘의 원리와 파이썬 구현 분석"
categories:
  - CompSci
tags:
  - legacy
  - algorithm
fmContentType: hugo-content
---

## Floyd-Warshall Algorithm

플로이드-워셜 알고리즘은 그래프 이론에서 모든 꼭짓점 간의 최단 경로를 찾는 알고리즘.

동적 계획법(Dynamic Programming)을 이용.

그래프에서 모든 꼭짓점 쌍 간의 최단 경로를 찾는 데 효율적.

복잡도는 O(n^3). (꼭짓점의 수가 많은 그래프에서는 시간이 많이 소요될 수 있음.)

## 알고리즘 원리

하나의 꼭짓점을 거쳐가는 경우를 살펴보며 최단 거리를 찾음. 즉, 모든 꼭짓점 간의 최단 거리를 찾기 위해 그래프의 모든 꼭짓점을 하나씩 거쳐가며 (i, j) 꼭짓점 쌍 간의 최단 거리를 갱신.

- 알고리즘은 다음과 같은 절차를 따름:
  1. 초기화

     거리 행렬을 초기화. 자기 자신으로의 거리는 0, 직접적인 경로가 없는 경우는 무한대로 설정.

  2. 각 꼭짓점을 거쳐가는 경우를 고려하며 거리 행렬을 갱신함.

## Python 코드 예제

```python
def floyd_warshall(graph):
    n = len(graph)
    dist = list(map(lambda i: list(map(lambda j: j, i)), graph))

    for k in range(n):
        for i in range(n):
            for j in range(n):
                dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])

    return dist

```
