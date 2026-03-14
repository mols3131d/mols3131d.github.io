---
title: "Regularized Linear Regression (정규화 선형회귀)"
date: 2023-10-11T00:00:00Z
description: "Regularized Linear Regression (정규화 선형회귀)"
categories:
  - DataSci
tags:
  - legacy
fmContentType: hugo-content
---

## Regularized Linear Regression (정규화 선형회귀)

정규화(regularized) 선형회귀 방법은 선형회귀 계수(weight)에 대한 제약 조건을 추가함으로써 모형이 과도하게 최적화되는 현상, 즉 과최적화를 막는 방법이다. Regularized Method, Penalized Method, Contrained Least Squares 이라고도 불리운다.

모형이 과도하게 최적화되면 모형 계수의 크기도 과도하게 증가하는 경향이 나타난다. 따라서 정규화 방법에서 추가하는 제약 조건은 일반적으로 계수의 크기를 제한하는 방법이다. 일반적으로 다음과 같은 세가지 방법이 사용된다.

## Lasso 회귀모형

aka. L1 규제

- 가중치 절댓값의 합을 특정 값 L1 보다 작게 함.

## Ridge 회귀모형

aka. L2 규제

- 가중치 제곱의 합을 특정 값 L2 보다 작게 함.

## Elastic Net 회귀모형

| 구분     | 릿지회귀                           | 라쏘회귀                       | 엘라스틱넷                            |
| -------- | ---------------------------------- | ------------------------------ | ------------------------------------- |
| 제약식   | $L2_2$ norm                        | $L1_1$ norm                    | $L1_1+L2_2$ norm                      |
| 변수선택 | 불가능                             | 가능                           | 가능                                  |
| solution | closed form                        | 명시해 없음                    | 명시해 없음                           |
| 장점     | 변수간 상관관계가 높아도 좋은 성능 | 변수간 상관관계가 높으면 성능↓ | 변수간 상관관계를 반영한 정규화       |
| 특징     | 크기가 큰 변수를 우선적으로 줄임   | 비중요 변수를 우선적으로 줄임  | 상관관계가 큰 변수를 동시에 선택/배제 |

---

## Reference

- [6.5 정규화 선형회귀 — 데이터 사이언스 스쿨](https://datascienceschool.net/03%20machine%20learning/06.05%20%EC%A0%95%EA%B7%9C%ED%99%94%20%EC%84%A0%ED%98%95%ED%9A%8C%EA%B7%80.html)
- [Regularized Linear Regression · ratsgo's blog](https://ratsgo.github.io/machine%20learning/2017/05/22/RLR/)
