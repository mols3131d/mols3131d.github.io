---
title: KCM Travel@백준 Python3 풀이
date: 2024-12-28T00:00:00Z
description: ""
categories:
  - CompSci
tags:
  - legacy
  - coding-test
fmContentType: hugo-content
---

## KCM Travel

<https://www.acmicpc.net/problem/10217>

## 풀이 시도 1 - 실패

최단 시간을 구하는 문제이므로 데이크스트라로 풀이 시도.

```python
from heapq import heappop, heappush
import sys

input = sys.stdin.readline
inf = sys.maxsize

T = input()
N, M, K = map(int, input().split(" "))

graph = [[] for k in range(N + 1)]
for _ in range(K):
    u, v, c, d = map(int, input().split(" "))

    graph[u].append((d, c, v))

dp = [[inf] * (M + 1) for _ in range(N + 1)]
dp[1][0] = 0

heap = [(0, 0, 1)]
while heap:
    dur, cost, node = heappop(heap)

    if dur > dp[node][cost]:
        continue

    for next_dur, next_cost, next_node in graph[node]:
        next_dur += dur
        next_cost += cost

        if next_cost > M:
            continue

        if next_dur < dp[next_node][next_cost]:
            dp[next_node][next_cost] = next_dur
            heappush(heap, (next_dur, next_cost, next_node))

d = min(dp[N])
if d == inf:
    print("Poor KCM")
else:
    print(d)
```

데이크스트라로 풀면 시간초과가 나는 것 같다. 그래서 다른 풀이 방법이 필요하다. 

## 풀이 시도 2 -

동적 계획법을 적용하여 풀이 시도.

```python

```

## Reference
