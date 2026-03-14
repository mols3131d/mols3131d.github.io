---
title: Two Pointer
date: 2023-06-18T00:00:00Z
description: "Two Pointer는 주어진 배열 또는 리스트에서 두 개의 포인터를 사용하여 특정 작업을 수행하는 기법"
categories:
  - CompSci
tags:
  - legacy
  - algorithm
fmContentType: hugo-content
---

## Two Pointer

---

Two Pointer는 주어진 배열 또는 리스트에서 두 개의 포인터를 사용하여 특정 작업을 수행하는 기법

선형 배열 또는 리스트에서 순차적으로 움직이는 것보다 효율적인 경우가 많음.

각각 다른 방향으로 움직이면서 원하는 결과를 찾는 데 사용.

```python
from typing import List

n = 5  # 데이터의 개수 N
m = 5  # 찾고자 하는 부분합 M
data = [1, 2, 3, 2, 5]  # 전체 수열

def count_subarray_sum(data: List[int], n: int, m: int) -> int:
    count = 0  # m인 부분합의 개수 카운트
    interval_sum = 0  # 부분합
    end = 0  # 오른쪽 포인터

    # 왼쪽 포인터(start)를 순차적으로 증가시키며 반복
    for start in range(n):
        # 부분합이 m보다 작고, 오른쪽 포인터가 데이터 개수 이하일 때
        while interval_sum < m and end < n:
            interval_sum += data[end]  # 부분합에 data[end]를 더함
            end += 1  # 오른쪽 포인터를 이동

        # 부분합이 m일 때 카운트 증가
        if interval_sum == m:
            count += 1

        # 왼쪽 포인터를 한 칸 이동하기 전에 기존 위치의 값 빼기
        interval_sum -= data[start]

    return count

print(count_subarray_sum(data, n, m))  # 결과: 3
```

---

## Reference

[Two Pointers Technique - GeeksforGeeks](https://www.geeksforgeeks.org/two-pointers-technique/)

[[이것이 코딩 테스트다 with Python] 39강 투 포인터](https://www.youtube.com/watch?v=ttLRltNDiCo&list=PLVsNizTWUw7H9_of5YCB0FmsSc-K44y81&index=39)

## See also E**xternal URI**

<https://school.programmers.co.kr/learn/courses/30/lessons/178870>
