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

## 경우의 수

1. 순열 (Permutation):
   - 중복 허용하지 않는 순열: nPr = n! / (n - r)!
   - 중복 허용하는 순열: n^r
2. 조합 (Combination):
   - 중복 허용하지 않는 조합: nCr = n! / (r! \* (n - r)!)
   - 중복 허용하는 조합: (n + r - 1)Cr = (n + r - 1)! / (r! \* (n - 1)!)
3. 이항 계수 (Binomial Coefficient):
   - 이항 계수: (nCr) = n! / (r! \* (n - r)!)
4. 멱집합 (Power Set)
   - 원소의 개수가 n인 집합의 멱집합의 원소 개수: 2^n
5. 배치 (Arrangement):
   - 중복 허용하지 않는 배치: n! / (n1! _ n2! _ ... \* nk!), 여기서 n = n1 + n2 + ... + nk
   - 중복 허용하는 배치: n^k
6. 중복 순열 (Permutation with Repetition): (n+r-1)!
7. 카탈란 수 (Catalan Number):
   - 카탈란 수: (2n)! / ((n+1)! \* n!)

---

## Reference

- [경우의 수 (Wikipedia)](https://ko.wikipedia.org/wiki/%EA%B2%BD%EC%9A%B0%EC%9D%98_%EC%88%98)
- [경우의 수 (나무위키)](https://namu.wiki/w/%EA%B2%BD%EC%9A%B0%EC%9D%98%20%EC%88%98)
- [경우의 수 공식 (나무위키)](https://namu.wiki/w/%EA%B2%BD%EC%9A%B0%EC%9D%98%20%EC%88%98/%EA%B3%B5%EC%8B%9D)


