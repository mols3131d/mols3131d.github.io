---
title: Python3 입력(Input) 함수 기초 및 심화
description: Python 3에서 사용자 혹은 파일로부터 데이터를 효율적으로 입력받는 다양한 방법(input, sys.stdin.readline)을 정리합니다.
date: 2024-12-30
categories:
  - Other
tags:
  - python
  - input
  - legacy
preview: null
draft: false
math: false
fmContentType: hugo-content
---

Python 3에서 입력을 받는 기본 방식과 대량의 데이터를 처리할 때의 효율적인 방식을 알아봅니다.

## `input()`

가장 기본적인 입력 함수입니다. 사용자로부터 한 줄의 문자열을 입력받습니다.

```python
name = input("이름을 입력하세요: ")
print(f"안녕하세요, {name}님!")
```

- **주의**: 입력 데이터는 항상 문자열(str) 타입이므로, 숫자 연산이 필요하다면 `int()`나 `float()`으로 형변환해야 합니다.

## 대량 데이터 처리를 위한 `sys.stdin.readline()`

알고리즘 문제 풀이 등 많은 데이터를 빠르게 읽어야 할 때는 `sys.stdin.readline()`을 사용하는 것이 훨씬 효율적입니다.

```python
import sys

# rstrip()으로 끝의 개행 문자(\n) 제거
line = sys.stdin.readline().rstrip()
```

## 파일로부터 입력받기

```python
with open("input.txt", "r") as f:
    # 모든 줄을 리스트로 읽기
    lines = f.readlines()
    for line in lines:
        print(line.rstrip())
        
    # 혹은 제너레이터 방식으로 효율적으로 순회
    for line in f:
        print(line.rstrip())
```

## 입력 데이터 처리 기법

### 1. 한 줄에 여러 데이터 받기 (`split`)

```python
# 공백 기준 분리
name, age = input().split()
```

### 2. 형변환과 동시 처리 (`map`)

```python
# 문자열 리스트를 한꺼번에 정수로 변환
N, M = map(int, input().split())
```
