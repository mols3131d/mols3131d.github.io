---
title: "부트스트랩 (Bootstrap) 샘플링 원리"
date: 2023-05-29T00:00:00Z
description: "복원 추출을 반복하여 모수를 추정하고 신뢰구간을 확보하는 강력한 비모수 통계 기법인 부트스트랩 이해하기"
categories:
  - DataSci
tags:
  - statistics
  - analysis
  - legacy
fmContentType: hugo-content
---

## 부트스트랩 (Bootstrap) 개요
부트스트랩은 주어진 표본(n개)에서 **복원 추출**을 무수히 반복하여 통계량의 분포를 구하는 기법입니다.

## 핵심 장점
- 데이터가 특정 정규 분포를 따라야 한다는 가정이 필요 없는 **비모수적 기법**입니다.
- 작은 규모의 표본으로도 통계적 신뢰성을 확보하는 데 매우 유용합니다.

## 실행 절차
1. $n$개의 표본 중 하나를 뽑아 기록하고 제자리에 둡니다 (복원).
2. 이를 $n$번 반복하여 하나의 부트스트랩 샘플을 만듭니다.
3. 이 샘플의 평균(통계량)을 구합니다.
4. $R$번 반복(보통 1,000회 이상)하여 $R$개의 통계량 분포를 형성합니다.

> [!NOTE]
> 부트스트랩은 표본이 전체 모집단을 대표한다는 전제하에, 데이터 사이사이의 '빈틈'을 메워주는 역할을 수행합니다.

---

## Reference
- Peter Bruce, "Statistics for Data Scientists" (부트스트랩 개념 참고)
- [BKSHIN Tistory - Bootstrap 이해](https://bkshin.tistory.com/entry/DATA-12)
---


