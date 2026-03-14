---
title: "빅데이터분석기사 실기 대비"
date: 2024-05-06T00:00:00Z
description: "빅데이터분석기사 실기 시험 준비를 위한 데이터 핸들링, 머신러닝 워크플로우 및 통계 요약"
categories:
  - others
tags:
  - certification
  - statistics
  - machine-learning
  - legacy
fmContentType: hugo-content
---

# 빅데이터분석기사 실기 대비

빅데이터분석기사 실기 시험을 위한 공부 내용을 정리합니다.

## 머신러닝 워크플로우

```mermaid
flowchart TD
    raw["Raw Data"] --> eda{"EDA"} 
    raw --> prep{"전처리"} --> split["데이터 분할"]
    split --> train["Train Set"]
    train --> train_sub["Training"]
    train --> val["Validation Set"]
    split --> test["Test Set"]
    
    train_sub --> opt_param["하이퍼파라미터 최적화"]
    val --> opt_param
    
    opt_param --> train_model["최종 모델 학습"]
    train --> train_model
    train_model --> pred["예측"]
```

## 주요 유형별 체크

1. **유형 1**: 데이터 핸들링 및 전처리
2. **유형 2**: 머신러닝 모델링 (분류/회귀)
3. **유형 3**: 통계적 가설 검정

---

## Reference
- [빅데이터분석기사 실기 체험환경](https://dataq.goorm.io/exam/3/체험하기/quiz/1)
- [DataManim](https://www.datamanim.com/intro.html)
- [Big Data Certification KR (Kaggle)](https://www.kaggle.com/datasets/agileteam/bigdatacertificationkr)
