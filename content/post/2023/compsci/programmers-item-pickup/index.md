---
title: 아이템 줍기 [프로그래머스 Python3]
date: 2023-07-09T00:00:00Z
description: 사각형 테두리를 따라 최단 경로를 찾는 아이템 줍기 문제 풀이. 맵 2배 확장을 통한 경로 끊김 현상 해결 방법 정리
categories:
  - CompSci
tags:
  - _legacy
  - algorithm
  - coding-test
  - python
fmContentType: hugo-content
---

이 문제는 사각형들의 테두리를 따라 캐릭터를 이동시켜 아이템을 줍는 최단 거리를 구하는 문제입니다.

## 핵심 아이디어

1. **맵 스케일링 (2배 확장)**: 인접한 사각형 테두리 사이의 간격이 1일 때, BFS 탐색 시 예상치 못한 길로 새는 것을 방지하기 위해 전체 좌표를 2배로 확장하여 계산합니다.
2. **테두리 정의**:
   - 사각형의 내부(`x1 < x < x2`, `y1 < y < y2`)는 이동 불가능 구역으로 설정합니다.
   - 테두리 구역 중 다른 사각형 내부에 포함되지 않는 지점만 길로 인식합니다.

## Python 코드 구현

```python
from collections import deque

def solution(rectangle, characterX, characterY, itemX, itemY):
    # 맵 확장 (0~50 -> 0~100)
    maps = [[0] * 102 for _ in range(102)]

    for r in rectangle:
        x1, y1, x2, y2 = map(lambda x: 2 * x, r)
        for x in range(x1, x2 + 1):
            for y in range(y1, y2 + 1):
                if x1 < x < x2 and y1 < y < y2: # 내부
                    maps[y][x] = 1
                else: # 테두리 후보
                    if maps[y][x] != 1:
                        maps[y][x] = 2

    # BFS 탐색
    queue = deque([(characterX * 2, characterY * 2, 0)])
    dx = [-1, 1, 0, 0]
    dy = [0, 0, -1, 1]

    while queue:
        x, y, d = queue.popleft()
        if x == itemX * 2 and y == itemY * 2:
            return d / 2 # 결과는 다시 1/2로 나눔

        for i in range(4):
            nx, ny = x + dx[i], y + dy[i]
            if 0 <= nx < 102 and 0 <= ny < 102 and maps[ny][nx] == 2:
                maps[ny][nx] = 1 # 방문 처리
                queue.append((nx, ny, d + 1))
```

---

## Reference

- [프로그래머스 아이템 줍기](https://school.programmers.co.kr/learn/courses/30/lessons/87694)
