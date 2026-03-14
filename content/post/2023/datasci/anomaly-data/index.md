---
title: "이상 데이터 (Anomaly Data vs Outlier)"
date: 2023-05-13T00:00:00Z
description: "데이터 분석에서의 이상(Anomaly), 이상치(Outlier), 그리고 새로운 패턴(Novelty)의 차이점 이해"
categories:
  - DataSci
tags:
  - data-analysis
  - anomaly
  - outlier
  - legacy
fmContentType: hugo-content
---

데이터 분석 과정에서 일반적인 패턴과 다른 예외적인 상황을 식별하는 것은 오류 검출 및 비즈니스 기회 포착에 매우 중요합니다.

| 용어        | 정의                                                         |
| ----------- | ------------------------------------------------------------ |
| **Anomaly** | 일반적으로 예상되는 패턴과 다른 행위나 데이터                |
| **Outlier** | 자료 집합 중 매우 극단적이거나 일반적이지 않은 값            |
| **Novelty** | 이전에 관찰하지 않았던 새로운 패턴 (새로운 사실 발견의 지표) |

## **Anomaly vs Abnormal**

비정상(Abnormal)이 일반적 관점에서 바람직하지 못한 행위를 일컫는다면, 이상(Anomaly)은 행위보다는 데이터 자체에 대상을 두고 있으며 **기존과 다르다는 것**에 초점을 맞춥니다.

## **Outlier (이상치, 이상점)**

다른 데이터와 크게 다른 데이터로, 측정의 변동성이나 실험 오류일 수 있지만 흥미로운 가설의 지표가 될 수도 있습니다. 통계 분석에 영향을 주므로 정밀한 처리가 필요합니다.

## **Novelty (신규성)**

일반적인 패턴과는 다르지만 그 자체로 고유한 패턴을 가지는 데이터입니다. 데이터 집합에서 새로운 지식을 추출하거나 예측 모델을 고도화하는 데 도움을 줍니다.

---

## Reference

- [Outlier (Wikipedia)](https://en.wikipedia.org/wiki/Outlier)
- [Novelty and Outlier Detection (scikit-learn)](https://scikit-learn.org/stable/modules/outlier_detection.html)
- [이상 탐지 개요 (NHN Cloud)](https://meetup.nhncloud.com/posts/362)
