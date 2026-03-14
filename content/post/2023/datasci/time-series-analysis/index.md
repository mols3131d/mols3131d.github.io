---
title: "시계열 분석 기초 (Time Series Analysis)"
date: 2023-03-24T00:00:00Z
description: "시간의 흐름에 따라 변하는 시계열 데이터의 구성 요소, 통계적 성질(정상성), 그리고 분석 모델(AR, I, MA) 정리"
categories:
  - DataSci
tags:
  - statistics
  - analysis
  - data-science
  - legacy
fmContentType: hugo-content
---

시계열(Time Series)은 일정 시간 간격으로 배치된 데이터들의 수열을 말하며, 과거의 데이터를 통해 미래를 예측하거나 현상을 해석하는 데 사용됩니다.

## 시계열의 4가지 주요 구성 요소

1. **추세 변동 (Trend Variation, $T_t$)**: 데이터의 장기적인 상승 또는 하락 경향.
2. **계절 변동 (Seasonal Variation, $S_t$)**: 분기, 월 등 고정된 주기로 반복되는 패턴.
3. **순환 변동 (Cyclical Variation, $C_t$)**: 경기에 따른 불규칙하고 긴 주기의 변동.
4. **불규칙 변동 (Irregular Variation, $I_t$)**: 예측 불가능한 우연적 변동.

## 시계열의 통계적 성질: 정상성 (Stationarity)

정상성을 가진 시계열은 시간의 흐름에 따라 확률적 구조가 변하지 않아야 하며, 다음 조건을 만족해야 합니다.

- **평균의 일정성**: $E(Y_t) = \mu$
- **분산의 일정성**: $Var(Y_t) = \sigma^2$
- **공분산의 시차 의존성**: $Cov(Y_t, Y_{t+k}) = \gamma_k$ (시점에 상관없이 시차 $k$에만 의존)

> [!TIP]
> 현실의 데이터는 비정상 시계열일 경우가 많으므로, **차분(Differencing)**이나 **로그 변환**을 통해 정상 시계열로 변환한 후 분석을 진행해야 합니다.

## 주요 분석 모델

- **AR (AutoRegressive)**: 과거의 값이 현재 값에 영향을 주는 모델.
- **MA (Moving Average)**: 관측값의 평균 변화를 이용하는 모델.
- **I (Integrated)**: 비정상 시계열을 차분하여 정상화하는 과정.
- **ARIMA**: 위 세 가지를 결합한 통합 모델.

---

## Reference

- [시계열 (Wikipedia)](https://ko.wikipedia.org/wiki/시계열)
- [정상성과 차분 (Forecasting: Principles and Practice)](https://otexts.com/fppkr/stationarity.html)
- [ACF와 PACF의 이해](https://aliencoder.tistory.com/9)


