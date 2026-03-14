---
title: "EDA: 탐색적 데이터 분석 (Exploratory Data Analysis)"
date: 2023-03-24T00:00:00Z
description: "객관적이면서도 유연하게 데이터를 관찰하여 패턴과 가설을 발견하는 EDA의 개념과 과정 정리"
categories:
  - DataSci
tags:
  - eda
  - statistics
  - legacy
fmContentType: hugo-content
---

# EDA 개요

탐색적 데이터 분석(EDA)은 주어진 데이터를 다각도에서 관찰하고 이해하는 과정입니다. 이는 선입견이나 인지 오류가 개입되지 않도록 객관적이면서도 유연한 탐색을 지향합니다.

Tukey(1977)는 EDA를 **“주어진 데이터에서 증거를 찾는 일”**이라고 정의했습니다.

## 주요 목적
1. 데이터가 표현하는 현상의 이해
2. 데이터 수집/가공 여부에 대한 결정
3. 기존에 몰랐던 패턴 발견
4. 새로운 가설 형성에 기여

## 핵심 질문
- **개별 변수의 분포 (Variation)**: 데이터가 어떤 값들을 가지고 있으며 얼마나 흩어져 있는가?
- **변수 간의 관계 (Covariation)**: 두 개 이상의 변수가 함께 어떻게 변하는가?

---

> [!TIP]
> 기술 통계(Descriptive Statistics)와 시각화 도구를 적절히 병행하여 데이터의 분포와 이상치를 탐색하는 것이 EDA의 시작입니다.

---

## Reference
- Tukey, J. W. (1977). Exploratory Data Analysis.
- R for Data Science (EDA Chapter)
