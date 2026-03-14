---
title: Tree Traverse
date: 2024-09-04T00:00:00Z
description: ""
categories:
  - CompSci
tags:
  - legacy
  - data-structure
fmContentType: hugo-content
---

## 트리 순회 (Tree Traverse)

---

트리 구조에서 각각의 노드를 정확히 한 번만, 체계적인 방법으로 방문하는 과정.

## Pre-order Traversal

전위 순회

---

전위 순회는 루트 노드를 먼저 방문한 다음, 왼쪽 서브트리를 방문하고, 마지막으로 오른쪽 서브트리를 방문하는 방식. 이 순서는 트리의 구조를 복사하거나, 트리의 노드들에 대한 작업을 수행할 때 유용합니다.

- 순회 순서:
    1. 루트 노드 처리.
    2. 왼쪽 자식 노드를 재귀적으로 방문.
    3. 오른쪽 자식 노드를 재귀적으로 방문.
- 예시
    
    ```
       A
      / \
     B   C
    / \
    D E
    ```
    
    - 순회 결과: `A → B → D → E → C`

## 중위 순회 (In-order Traversal)

중위 순회는 왼쪽 서브트리를 먼저 방문하고, 그 다음 루트 노드를 방문하며, 마지막으로 오른쪽 서브트리를 방문하는 방식입니다. 이진 탐색 트리에서 중위 순회를 하면 노드를 오름차순으로 방문하게 되므로, 정렬된 데이터를 얻을 때 유용합니다.

- 순회 순서:
    1. 왼쪽 자식 노드를 재귀적으로 방문합니다.
    2. 루트 노드를 처리합니다.
    3. 오른쪽 자식 노드를 재귀적으로 방문합니다.
- 예시
    
    ```
       A
      / \
     B   C
    / \
    D E
    ```
    
    - 순회 결과: `D → E → B → C → A`

## 후위 순회 (Post-order Traversal)

후위 순회는 왼쪽 서브트리를 먼저 방문하고, 그 다음 오른쪽 서브트리를 방문하며, 마지막으로 루트 노드를 방문하는 방식입니다. 이 방법은 트리의 노드를 삭제하거나, 하위 트리부터 처리해야 하는 작업에서 유용합니다.

- 순회 순서:
    1. 왼쪽 자식 노드를 재귀적으로 방문합니다.
    2. 오른쪽 자식 노드를 재귀적으로 방문합니다.
    3. 루트 노드를 처리합니다.
- 예시
    
    ```
       A
      / \
     B   C
    / \
    D E
    ```
    
    - 순회 결과: `D → E → B → C → A`

## 레벨 순회 (Level-order Traversal)

레벨 순회는 트리의 각 레벨을 왼쪽에서 오른쪽으로 순차적으로 방문하는 방식입니다. 이 방법은 BFS(너비 우선 탐색)과 유사하며, 주로 큐(Queue)를 사용하여 구현됩니다. 트리의 최단 경로를 찾거나, 레벨별로 데이터를 처리해야 할 때 유용합니다.

- 순회 순서:
    1. 루트 노드에서 시작하여 큐에 추가합니다.
    2. 큐에서 노드를 하나씩 꺼내며, 해당 노드의 자식 노드를 큐에 추가합니다.
    3. 큐가 빌 때까지 이 과정을 반복합니다.
- 예시
    
    ```
       A
      / \
     B   C
    / \
    D E
    ```
    
    - 순회 결과: `A → B → C → D → E`

---

## Reference

- <https://www.geeksforgeeks.org/tree-traversals-inorder-preorder-and-postorder/>
- <https://en.wikipedia.org/wiki/Tree_traversal>
- <https://ko.wikipedia.org/wiki/%ED%8A%B8%EB%A6%AC_%EC%88%9C%ED%9A%8C>

## See also External URI
