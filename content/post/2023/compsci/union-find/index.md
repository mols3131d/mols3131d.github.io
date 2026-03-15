---
title: Union Find
date: 2023-06-16T00:00:00Z
description: 서로소 집합(Disjoint Set)의 합집합 연산과 찾기 연산을 효율적으로 관리하는 유니온-파인드 알고리즘의 원리와 파이썬 구현 정리
categories:
  - CompSci
tags:
  - _legacy
  - algorithm
fmContentType: hugo-content
---

## Union Find

합집합-찾기, Disjoint Set(서로소 집합)

---

Union과 Find연산을 하기에 적합한 자료구조.

연결 여부를 판단하는 데에 사용할 수 있다.

- 구성
  - n: 집합의 개수
  - parent
  - rank
- 연산
  - Find: 하나의 원소가 어떤 집합에 속해있는지를 판단, 속한 집합을 반환.
    - **Path Compression(경로 압축)**을 활용하여 최적화할 수 있다.
  - Union: 서로 다른 두 개의 집합을 하나의 집합으로 병합
    - **Union by Rank(유니온 바이 랭크)**를 사용하면, 합집합 연산이 최악의 경우에도 트리의 높이가 최소로 유지되게 되며, 찾기(Find) 연산의 성능을 개선시킬 수 있다.

## Python3로 구현

- 함수로 구현.

  ```python
  parent = [i for i in range(n)]

  def find(parent, i):
      if parent[i] != i:
          parent[i] = find(parent, parent[i])
      return parent[i]

  def union(parent, i, j):
      i = find(parent, i)
      j = find(parent, j)
      if i < j:
          parent[j] = i
      else:
          parent[i] = j
  ```

- UnionFind 클래스

  ```python
  class UnionFind:
      def __init__(self, n):
          # MakeSet
          self.parent = [i for i in range(n)]
          self.rank = [0] * n

      def find(self, x):
          if self.parent[x] != x:
              self.parent[x] = self.find(self.parent[x])
          return self.parent[x]

      def union(self, x, y):
          root_x = self.find(x)
          root_y = self.find(y)

          if root_x == root_y:
              return

          if self.rank[root_x] < self.rank[root_y]:
              self.parent[root_x] = root_y
          elif self.rank[root_x] > self.rank[root_y]:
              self.parent[root_y] = root_x
          else:
              self.parent[root_y] = root_x
              self.rank[root_x] += 1
  ```

- UnionFind 클래스의 인스턴스 생성

  ```python
  n = 5
  uf = UnionFind(n)
  ```

- 초기 상태 출력

  ```python
  print(uf.parent)
  print(uf.rank)
  ```

  ```text
  [0, 1, 2, 3, 4]
  [0, 0, 0, 0, 0]
  ```

- Union 연산

  ```python
  #  수행
  uf.union(0, 1)    # [0, 0, 2, 3, 4] / [1, 0, 0, 0, 0]
  uf.union(1, 2)    # [0, 0, 0, 3, 4] / [1, 0, 0, 0, 0]
  uf.union(3, 4)    # [0, 0, 0, 3, 3] / [1, 0, 0, 1, 0]

  # Union 연산 후 상태 출력
  print(uf.parent)
  print(uf.rank)
  ```

  ```text
  [0, 0, 0, 3, 3]
  [1, 0, 0, 1, 0]
  ```

- Find 연산 수행

  ```python
  print(uf.find(2))
  print(uf.find(4))
  print(uf.find(0))
  ```

  ```text
  0
  3
  0
  ```

## `find(parent, i)`와 `parent[i]`

- `parent = [0, 1, 0, 1]`
  이 경우는 모든 노드가 루트 노드로 지정되어있다. 이 경우 출력의 차이는 없다.

  ```python
  parent = [0, 1, 0, 1]
  n = len(parent)
  tree_size = [0] * 4

  for p in parent:
      tree_size[p] += 1

  print(tree_size)
  ```

  ```text
  [2, 2, 0, 0]
  ```

  ```python
  parent = [0, 1, 0, 1]
  n = len(parent)
  tree_size = [0] * (n)

  for i in range(n):
      tree_size[find(parent, i)] += 1

  print(tree_size)
  ```

  ```text
  [2, 2, 0, 0]
  ```

- `parent = [0, 0, 0, 1]`
  `parent[3]`이 `1`로 되어있지만, 정작 `parent[1]`은 `0`으로 `parent[3]`의 root는 0이 나와야한다. 즉, 4개의 노드의 루트는 0이다.

  ```python
  parent = [0, 0, 0, 1]
  n = len(parent)
  tree_size = [0] * 4

  for p in parent:
      tree_size[p] += 1

  print(tree_size)
  ```

  ```text
  [3, 1, 0, 0]
  ```

  ```python
  parent = [0, 0, 0, 1]
  n = len(parent)
  tree_size = [0] * (n)

  for i in range(n):
      tree_size[find(parent, i)] += 1

  print(tree_size)
  ```

  ```text
  [4, 0, 0, 0]
  ```

## `parent = [0, 0, 0, 1]` 와 같은 배열이 나오는 경우와 이유

`union` 함수를 사용하여 `parent` 배열을 갱신할 때, 직접 루트 노드 정보가 반영되지 않는 경우가 있다.

- `parent` 배열에서 어떤 특정 요소가 루트 노드 대신 부모 노드를 담고 있는 경우
  `parent[4]` 의 루트노드는 `0` 이지만, 간선 `(3, 4)` 이 간선 `(0, 3)` 보다 먼저 병합되고, 후에 더 이상 병합할 간선이 없어서 루트노드가 아닌 상위노드(부모노드)인 `3` 이 나왔다.

  ```python
  edge = [(0, 1), (1, 2), (3, 4), (0, 3)]
  n = 6
  parent = [i for i in range(n)]

  for ed in edge:
      union(parent, ed[0], ed[1])
      print(parent)
  ```

  ```text
  [0, 0, 2, 3, 4, 5]
  [0, 0, 0, 3, 4, 5]
  [0, 0, 0, 3, 3, 5]
  [0, 0, 0, 0, 3, 5]
  ```

## Reference

- [Union Find (나무위키)](https://namu.wiki/w/Union%20Find)
- [서로소 집합 자료 구조 (위키백과)](https://ko.wikipedia.org/wiki/%EC%84%9C%EB%A1%9C%EC%86%8C_%EC%A7%91%ED%95%A9_%EC%9E%90%EB%A3%8C_%EA%B5%AC%EC%A1%B0)

## See also

- [전력망을 둘로 나누기 (프로그래머스)](https://school.programmers.co.kr/learn/courses/30/lessons/86971)
