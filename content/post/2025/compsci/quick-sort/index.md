---
title: 퀵 정렬 (Quick Sort) 원리와 구현
date: 2025-04-20T00:00:00Z
description: 분할 정복 기반의 강력한 정렬 알고리즘인 퀵 정렬의 작동 원리와 Lomuto/Hoare 분할 기법을 이용한 In-Place 정렬 구현
categories:
  - CompSci
tags:
  - algorithm
  - sorting
  - python
  - legacy
fmContentType: hugo-content
---

# 퀵 정렬 (Quick Sort)

![Quick Sort Animation](https://upload.wikimedia.org/wikipedia/commons/6/6a/Sorting_quicksort_anim.gif)

퀵 정렬은 분할 정복(Divide and Conquer) 기법을 사용하는 효율적인 정렬 알고리즘입니다. 평균적으로 $O(n \log n)$의 뛰어난 성능을 보입니다.

## 작동 원리

1. **피벗 선택**: 배열 중 하나의 원소를 기준점(Pivot)으로 잡습니다.
2. **분할(Partition)**: 피벗보다 작은 값과 큰 값으로 하위 세그먼트를 나눕니다.
3. **재귀**: 각 하위 그룹에 대해 동일한 작업을 반복하여 정렬을 완성합니다.

## 구현 방법

### 1. 전형적인 방식 (가독성 위주)

추가적인 리스트 메모리를 사용하여 직관적으로 구현한 파이썬 코드입니다.

```python
def quick_sort(arr):
    if len(arr) <= 1: return arr
    pivot = arr[len(arr) // 2]
    less = [x for x in arr if x < pivot]
    equal = [x for x in arr if x == pivot]
    greater = [x for x in arr if x > pivot]
    return quick_sort(less) + equal + quick_sort(greater)
```

### 2. In-Place 정렬 (메모리 최적화)

Lomuto 분할 방식을 통해 추가 메모리 없이 정렬하는 최적화 코드입니다.

```python
def partition(arr, low, high):
    pivot = arr[high]
    i = low - 1
    for j in range(low, high):
        if arr[j] <= pivot:
            i += 1
            arr[i], arr[j] = arr[j], arr[i]
    arr[i + 1], arr[high] = arr[high], arr[i + 1]
    return i + 1

def quicksort_inplace(arr, low, high):
    if low < high:
        idx = partition(arr, low, high)
        quicksort_inplace(arr, low, idx - 1)
        quicksort_inplace(arr, idx + 1, high)
```

---

## Reference

- [Quicksort (Wikipedia)](https://en.wikipedia.org/wiki/Quicksort)
- [Lomuto Partition Algorithm - GeeksforGeeks](https://www.geeksforgeeks.org/lomuto-partition-algorithm/)
