---
title: "등대 | 프로그래머스, Python3"
date: 2024-11-14T00:00:00Z
description: "프로그래머스 레벨 3 '등대' 문제 풀이; 트리를 이용한 DP 및 DFS 접근법 정리"
categories:
    - ComputerSci
tags:
    - coding-test
    - algorithm
    - dp
    - tree
fmContentType: hugo-content
---

문제 링크: [등대](https://school.programmers.co.kr/learn/courses/30/lessons/133500)

인접한 등대가 1개 뿐인 등대(리프 노드)와 인접한 등대의 경우, 반드시 불이 켜져야 함을 이용하여 몇 가지 시도를 해보았지만, 적절한 풀이가 아니었다. 대신 트리를 이용한 DP나 DFS로 접근하는 것이 효과적이다.

# 풀이

## 1. 그리디/재귀 접근법

리프 노드가 꺼져있다면, 그것의 부모 노드인 등대는 무조건 켜져있어야 한다는 원리를 확장한 풀이입니다.

```python
import sys
sys.setrecursionlimit(100001)
from collections import defaultdict

def solution(n, lighthouse):
    graph = defaultdict(set)
    for a, b in lighthouse:
        graph[a].add(b)
        graph[b].add(a)
    
    lightup = [False] * (n + 1)
    
    def check(root, children):
        if not children:
            return False
        if any([(not check(c, graph[c] - {root})) for c in children]):
            lightup[root] = True
            return True
        return False

    check(1, graph[1])
    return sum(lightup)
```

## 2. 트리 DP 접근법

해당 노드가 켜졌을 때와 꺼졌을 때 두 가지 상태를 반환하며 최소값을 구하는 방식입니다.

```python
import sys
from collections import defaultdict
sys.setrecursionlimit(1000001)

def solution(n, lighthouse):
    adj = defaultdict(list)
    for u, v in lighthouse:
        adj[u].append(v)
        adj[v].append(u)
        
    vis = [False] * (n + 1)

    def dfs(u):
        vis[u] = True
        on, off = 1, 0
        for v in adj[u]:
            if not vis[v]:
                child_on, child_off = dfs(v)
                on += min(child_on, child_off)
                off += child_on
        return on, off

    on, off = dfs(1)
    return min(on, off)
```

---

# **Appendix**

## Reference

- [프로그래머스 등대 문제](https://school.programmers.co.kr/learn/courses/30/lessons/133500)
- [[프로그래머스] (Lv.3) 등대 풀이](https://tolerblanc.github.io/programmers/programmers-lighthouse/)
- [[프로그래머스] 등대 파이썬 해설](https://www.ai-bio.info/programmers/133500)
