---
title: 동적 계획법 (Dynamic Programming, DP)
description: 복잡한 문제를 간단한 여러 개의 문제로 나누어 푸는 동적 계획법(DP)의 정의, 조건, 그리고 구현 방식(Memoization, Bottom-Up, Top-Down)에 대해 정리합니다.
date: 2025-01-20T11:00:00+09:00
categories:
  - CompSci
tags:
  - Algorithm
preview: null
draft: false
math: false
fmContentType: hugo-content
aliases:
  - 동적 계획법
  - Dynamic Programming
  - DP
---

# 동적 계획법

복잡한 문제를 간단한 여러 개의 문제로 나누어 푸는 방법을 말한다. 이것은 부분 문제 반복과 최적 부분 구조를 가지고 있는 알고리즘을 일반적인 방법에 비해 더욱 적은 시간 내에 풀 때 사용한다.

## 동적 계획법의 조건

1. **최적 부분구조**: 큰 문제를 작은 문제로 나눠서, 작은 문제를 큰 문제로 모아서 해결할 수 있는 경우.

2. **중복 부분 문제**: 부분 구조가 중복되어있는 경우.

피보나치 수열은 대표적인 동적 계획법 사용 예시이다. 큰 문제를 작은 문제로 나눠서 해결할 수 있으며, 중복된 계산을 하지 않음으로써 더 효율적이다.

> **피보나치 수열**
>
> 첫 번째와 두 번째 항이 1이고, 그 이후의 항은 바로 앞의 두 항의 합으로 이루어지는 수열입니다.
>
> 예시: 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

## 동적 계획법 구현 방식

### 메모이제이션 (Memoization)

동일한 계산을 반복해야할 때, 이전에 계산한 값을 메모리에 저장, 캐싱함으로써 반복 계산을 줄여 알고리즘을 최적화하는 기술. 동적 계획법의 핵심 기술이다.

### 상향식 (Bottom-Up)

작은 문제부터 부분적으로 해결하여 큰 문제를 해결하는 방식.

### 하향식 (Top-Down)

큰 문제를 작은 부분 문제로 나누어 해결하는 방식.

## Reference

- [동적 계획법 @Wikipedia](https://ko.wikipedia.org/wiki/%EB%8F%99%EC%A0%81_%EA%B3%84%ED%9A%8D%EB%B2%95)
- [동적 계획법 @나무위키](https://namu.wiki/w/%EB%8F%99%EC%A0%81%20%EA%B3%84%ED%9A%8D%EB%B2%95)
- [동적계획법(Dynamic Programming) @velog.io/@boyeon_jeong](https://velog.io/@boyeon_jeong/%EB%8F%99%EC%A0%81%EA%B3%84%ED%9A%8D%EB%B2%95Dynamic-Programming)
- [[Python] DP(Dynamic Programming) 알고리즘이 뭘까?/ 개미전사 풀이 / 백준 1463번 1로 만들기 풀이 @kill-xxx.tistory.com](https://kill-xxx.tistory.com/18)
