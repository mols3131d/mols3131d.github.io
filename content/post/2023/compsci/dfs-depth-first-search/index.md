---
title: DFS, Depth-First Search
date: 2023-06-16T00:00:00Z
description: ""
categories:
  - CompSci
tags:
  - legacy
  - algorithm
fmContentType: hugo-content
---

# DFS, Depth-First Search

깊이 우선 탐색

```python
# DFS 함수 정의
def dfs(graph, v, visited):
    # 현재 노드 방문 처리
    visited[v] = True
    print(v, end=' ')
    
    # 연결된 다른 노드 재귀적 방문
    for i in graph[v]:
        if not visited[i]:
            dfs(graph, i, visited)

# 노드 연결 정보 (2차원 리스트)
graph = [
  [],
  [2, 3, 8],
  [1, 7],
  [1, 4, 5],
  [3, 5],
  [3, 4],
  [7],
  [2, 6, 8],
  [1, 7]
]

# 노드 방문 정보 (1차원 리스트)
visited = [False] * 9

# DFS 함수 호출
dfs(graph, 1, visited)
```

---

# **Appendix**

## Reference

[python-for-coding-test/5/8.py at master · ndb796/python-for-coding-test](https://github.com/ndb796/python-for-coding-test/blob/master/5/8.py)

## See also E**xternal URI**
