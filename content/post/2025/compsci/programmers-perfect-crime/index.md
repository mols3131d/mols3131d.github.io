---
title: 완전범죄 [프로그래머스 Python3]
date: 2025-02-24T00:00:00Z
description: DP를 활용하여 흔적을 최소화하는 완전범죄 문제 풀이 (2025 프로그래머스 신규 문항)
categories:
  - CompSci
tags:
  - coding-test
  - legacy
fmContentType: hugo-content
---

이 문제는 각 단계에서 남는 두 종류의 흔적을 고려하며 총합의 제한을 지키면서 한쪽의 흔적을 최소화하는 DP 문제입니다.

## DP를 활용한 풀이

```python
def solution(info, n, m):
    # dp[a][b] = A 흔적이 a, B 흔적이 b가 되는 것이 가능한지 여부
    dp = [[False] * (m) for _ in range(n)]
    dp[0][0] = True

    for evid_a, evid_b in info:
        dp_next = [[False] * (m) for _ in range(n)]
        for a in range(n):
            for b in range(m):
                if not dp[a][b]:
                    continue
                # A를 선택하는 경우
                if a + evid_a < n:
                    dp_next[a + evid_a][b] = True
                # B를 선택하는 경우
                if b + evid_b < m:
                    dp_next[a][b + evid_b] = True
        dp = dp_next

    # 가능한 최소의 A 흔적 찾기
    for a in range(n):
        for b in range(m):
            if dp[a][b]:
                return a

    return -1
```

---

## Note

위 풀이는 일반적인 배낭 문제(Knapsack) 스타일의 동적 계획법을 코딩테스트 환경에 맞춰 최적화한 구현입니다.

## Reference

- [프로그래머스 완전범죄](https://school.programmers.co.kr/learn/courses/30/lessons/389480)
