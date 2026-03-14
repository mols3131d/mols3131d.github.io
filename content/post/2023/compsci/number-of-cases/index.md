---
title: 경우의 수 (Number of Cases)
date: 2023-06-11T00:00:00Z
description: "순열, 조합, 이항 계수 등 알고리즘 문제 풀이에 필수적인 경우의 수 공식 요약"
categories:
  - CompSci
tags:
  - algorithm
  - math
  - legacy
fmContentType: hugo-content
---

## 1. 순열 (Permutation)

순서를 고려하여 $n$개 중 $r$개를 선택하여 나열하는 경우입니다.

- **일반 순열:** $P(n, r) = \frac{n!}{(n-r)!}$
- **중복 순열:** $n^r$ (중복을 허용하여 $r$번 나열)

## 2. 조합 (Combination)

순서를 고려하지 않고 $n$개 중 $r$개를 선택하는 경우입니다.

- **일반 조합:** $C(n, r) = \binom{n}{r} = \frac{n!}{r!(n-r)!}$
- **중복 조합:** $H(n, r) = \binom{n+r-1}{r} = \frac{(n+r-1)!}{r!(n-1)!}$

## 3. 이항 계수 (Binomial Coefficient)

$(a+b)^n$ 전개식에서 항의 계수를 의미하며, 조합의 수와 동일합니다.

- $\binom{n}{r} = \frac{n!}{r!(n-r)!}$

## 4. 멱집합 (Power Set)

원소의 개수가 $n$인 집합의 모든 부분집합의 모임입니다.

- **부분집합의 총 개수:** $2^n$

## 5. 같은 것이 있는 순열 (Permutation with Identical Items)

서로 같은 것이 각각 $n_1, n_2, \dots, n_k$개씩 있을 때, 이를 모두 일렬로 배열하는 방법입니다. ($n = \sum n_i$)

- $\frac{n!}{n_1! \times n_2! \times \dots \times n_k!}$

## 6. 카탈란 수 (Catalan Number)

올바른 괄호 쌍, 산 만들기, 이진 트리 구성 등에 사용되는 수열입니다.

- $C_n = \frac{1}{n+1} \binom{2n}{n} = \frac{(2n)!}{(n+1)!n!}$

---

## Reference

- [경우의 수 (Wikipedia)](https://ko.wikipedia.org/wiki/%EA%B2%BD%EC%9A%B0%EC%9D%98_%EC%88%98)
- [경우의 수 (나무위키)](https://namu.wiki/w/%EA%B2%BD%EC%9A%B0%EC%9D%98%20%EC%88%98)
- [경우의 수 공식 (나무위키)](https://namu.wiki/w/%EA%B2%BD%EC%9A%B0%EC%9D%98%20%EC%88%98/%EA%B3%B5%EC%8B%9D)
