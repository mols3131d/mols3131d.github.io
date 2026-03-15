---
title: Cluster Analysis
date: 2023-05-17T00:00:00Z
description: 비지도 학습의 대표적인 기법인 군집 분석(Clustering)의 개념, 계층적/분할적 방법론, 그리고 실루엣 계수 등 평가지표 정리
categories:
  - DataSci
tags:
  - _legacy
fmContentType: hugo-content
---

군집 분석(Cluster Analysis)은 기계학습 분야에서 활용되는 대표적인 비지도 학습(Unsupervised Learning) 기법 중 하나입니다. 데이터 간의 유사성을 측정하여 다수의 군집으로 나누고, 군집 간의 상이성을 확인하여 자료에 대한 요약정리 혹은 패턴 이해를 목적으로 합니다.

- 특징
  - 비지도학습의 대표적인 예시로, 정답(Label)이 없는 상태에서 데이터의 구조를 파악합니다.
  - 모든 데이터를 군집화할 필요가 없을 경우 배경(Background)으로 남겨두는 부분적 군집화도 가능합니다.
  - 이상점(Outlier)의 영향을 쉽게 받으므로 전처리 및 보정이 중요합니다.

- 홉킨스 통계량(Hopkins Statistic)
  - 데이터 세트가 군집화에 적합한지 판단하는 지표로, 1에 가까울수록 군집화가 용이함을 의미합니다.

- 평가지표
  - **정답이 있는 경우**: 조정 랜드지수(ARI), 조정 상호정보량(AMI) 등
  - **정답이 없는 경우**: 실루엣 분석(Silhouette Analysis) - 1에 가까울수록 제대로 할당되었음을 의미합니다.

## Hierarchical & Partitional Clustering

군집 형성 방식에 따라 계층적 방법과 분산적 방법으로 나뉩니다.

- **분할적 군집화(Partitional Clustering) 유형**:
  - 중심점 기반: K-평균 군집화(K-Means)
  - 밀도 기반: DBSCAN
  - 확률 기반: 퍼지 군집화(Fuzzy Clustering)
  - 분포 기반: 기댓값 최대화(EM Algorithm)
  - 그래프 기반: 자기조직화지도(SOM)

## Reference

- [클러스터 분석 (위키백과)](https://ko.wikipedia.org/wiki/클러스터_분석)
- [Cluster analysis (Wikipedia)](https://en.wikipedia.org/wiki/Cluster_analysis)
- [군집 분석 (나무위키)](https://namu.wiki/w/%EA%B5%B0%EC%A7%91%20%EB%B6%84%EC%84%9D)
- [군집화 (데이터 사이언스 스쿨)](https://datascienceschool.net/03%20machine%20learning/16.01%20%EA%B5%B0%EC%A7%91%ED%99%94.html)
