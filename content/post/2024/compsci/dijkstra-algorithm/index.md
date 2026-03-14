---
title: 데이크스트라 알고리즘 (Dijkstra Algorithm)
date: 2024-01-26T00:00:00Z
description: 가중치가 있는 유향 그래프에서 하나의 시작 정점으로부터 다른 모든 정점까지의 최단 경로를 찾는 데이크스트라 알고리즘 정리
categories:
  - CompSci
tags:
  - algorithm
  - graph
  - dijkstra
  - legacy
fmContentType: hugo-content
---

데이크스트라 알고리즘(Dijkstra Algorithm)은 시작 노드에서 다른 모든 노드로의 최단 경로를 찾는 알고리즘입니다. 이 알고리즘은 간선의 가중치가 모두 양수일 때만 사용할 수 있습니다.

## 작동 원리

1. 시작 노드를 설정
2. 최단 거리 테이블을 초기화
3. 방문하지 않은 노드 중에서 최단 거리가 가장 짧은 노드를 선택
4. 해당 노드를 거쳐 다른 노드로 가는 비용을 계산하여 최단 거리 테이블을 갱신
5. 위 과정을 반복

## 예시 코드

```python
import heapq

def dijkstra(graph, start):
    distances = {node: float('inf') for node in graph}
    distances[start] = 0
    queue = []

    heapq.heappush(queue, [distances[start], start])

    while queue:
        current_distance, current_node = heapq.heappop(queue)

        if distances[current_node] < current_distance:
            continue

        for adjacent, weight in graph[current_node].items():
            distance = current_distance + weight

            if distance < distances[adjacent]:
                distances[adjacent] = distance
                heapq.heappush(queue, [distance, adjacent])

    return distances

graph = {
    'A': {'B': 8, 'C': 1, 'D': 2},
    'B': {},
    'C': {'B': 5, 'D': 2},
    'D': {'E': 3, 'F': 5},
    'E': {'F': 1},
    'F': {'A': 5}
}

print(dijkstra(graph, 'A'))
```

출력 결과:
`{'A': 0, 'B': 6, 'C': 1, 'D': 2, 'E': 5, 'F': 6}`

## 관련 코딩 테스트 문제

- [백준 데이크스트라 분류](https://www.acmicpc.net/problemset?sort=ac_desc&algo=22)
- [백준 데이크스트라 분류](https://www.acmicpc.net/problemset?sort=ac_desc&algo=22)
- [프로그래머스 부대복귀](https://school.programmers.co.kr/learn/courses/30/lessons/132266)

---

## Reference

- [데이크스트라 알고리즘 (Wikipedia)](https://ko.wikipedia.org/wiki/%EB%8D%B0%EC%9D%B4%ED%81%AC%EC%8A%A4%ED%8A%B8%EB%9D%BC_%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98)
- [다익스트라 알고리즘 (나무위키)](https://namu.wiki/w/%EB%8B%A4%EC%9D%B5%EC%8A%A4%ED%8A%B8%EB%9D%BC%20%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98)
