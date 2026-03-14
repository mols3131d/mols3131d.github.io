---
title: "BFS: 너비 우선 탐색 (Breadth-First Search)"
date: 2023-06-16T00:00:00Z
description: 큐를 활용하여 가장 가까운 노드부터 탐색하는 BFS 알고리즘의 원리와 파이썬 구현 가이드
categories:
  - CompSci
tags:
  - algorithm
  - graph
  - python
  - legacy
fmContentType: hugo-content
---

# BFS 개요
너비 우선 탐색은 시작 노드에서 가까운 노드부터 순차적으로 탐색하는 그래프 알고리즘입니다. 주로 최단 경로를 찾거나 연결된 컴포넌트를 확인할 때 사용됩니다.

# 구현 방법 (Python)
`collections.deque`를 활용해 효율적인 큐(Queue) 구조를 구성하여 구현합니다.

```python
from collections import deque

def bfs(graph, start):
    visited = [False] * (len(graph) + 1)
    queue = deque([start])
    visited[start] = True

    while queue:
        node = queue.popleft()
        print(node, end=" ")

        for adjacent in graph[node]:
            if not visited[adjacent]:
                queue.append(adjacent)
                visited[adjacent] = True

# 그래프 (인접 리스트 예시)
graph = {
    1: [2, 3],
    2: [1, 4, 5],
    3: [1, 6, 7],
    4: [2],
    5: [2],
    6: [3],
    7: [3]
}

bfs(graph, 1)
```

---

## Reference
- [나동빈 코딩테스트 BFS 강좌](https://github.com/ndb796/python-for-coding-test)
