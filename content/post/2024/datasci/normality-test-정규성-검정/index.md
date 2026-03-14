---
title: "Normality Test (정규성 검정)"
date: 2024-05-17T00:00:00Z
description: ""
categories:
  - DataSci
tags:
  - legacy
  - statistics
  - normality-test
fmContentType: hugo-content
---

---

정규성 검정은 데이터가 정규 분포를 따르는지 확인하는 통계적 방법. 정규 분포는 평균을 중심으로 좌우 대칭의 종 모양을 이루는 분포로, 많은 통계 분석 기법에서 데이터가 정규 분포를 따른다는 가정이 중요하다.

## 정규성 검정의 목적

- 모수적 통계 분석의 신뢰성 확보
    
    t-검정, ANOVA 등 많은 통계 분석 방법은 데이터가 정규 분포를 따른다는 가정하에 수행된다. 따라서, 정규성 검정을 통해 이 가정을 확인하지 않으면 분석 결과의 신뢰성이 떨어질 수 있다.
    
- 데이터 이해도 향상
    
    데이터의 분포를 파악하고 이상치를 탐지하여 데이터에 대한 이해도를 높일 수 있다.
    
- 머신러닝 모델 성능 최적화
    
    머신러닝 모델링에서 입력 데이터의 정규성은 모델 성능에 영향을 줄 수 있다. 정규성 검정을 통해 데이터를 변환하거나 적절한 모델을 선택하여 성능을 향상시킬 수 있다.
    

## 정규성 검정 방법

정규성 검정 방법은 크게 그래프를 이용한 시각적 방법과 통계적 검정 방법으로 나눌 수 있다.

- 시각적 방법
    - 히스토그램
        
        데이터 분포의 대략적인 형태 확인
        
    - Q-Q 플롯 (Quantile-Quantile Plot)
        
        데이터의 분위수를 정규 분포의 분위수와 비교하여 직선 형태를 이루는지 확인합니다.
        
    - 박스 플롯
        
        데이터의 중앙값, 사분위수, 이상치 등을 시각적으로 보여줍니다.
        
- 통계적 검정 방법
    - Shapiro-Wilk 검정
        
        표본 크기가 작을 때 (일반적으로 50개 미만) 강력한 검정력을 가지는 방법입니다.
        
    - Kolmogorov-Smirnov 검정
        
        표본 크기가 클 때 유용한 방법입니다.
        
    - Anderson-Darling 검정
        
        Shapiro-Wilk 검정과 유사하지만, 꼬리 부분의 차이에 더 민감하게 반응합니다.
        
    - D’Agostino’s K-squared 검정
    - Jarque-Bera 검정
        
        정규분포의 왜도(skewness)와 첨도(kurtosis)를 검정.
        

## Python으로 정규성 검정 시작하기

```python
from scipy.stats import shapiro, kstest, anderson

# Shapiro-Wilk 검정
statistic, p_value = shapiro(data)

# Kolmogorov-Smirnov 검정
statistic, p_value = kstest(data, 'norm')

# Anderson-Darling 검정
result = anderson(data)
statistic = result.statistic
p_value = result.significance_level[2]  # 유의수준 5%에 해당하는 p-value
```

## 정규성 검정 결과 해석

- 일반적으로 p-값이 0.05보다 작으면 데이터가 정규 분포를 따르지 않는다고 판단.
    
    하지만 p-값은 확률적인 값임을 명심해야함. 시각적인 방법과 함께 사용하여 종합적으로 판단하는 것이 좋음.
    

## 정규성을 만족하지 않는 경우

데이터가 정규성을 만족하지 않는 경우 아래의 방법들을 고려할 수 있다.

- 데이터 변환
    
    로그 변환, 제곱근 변환 등을 통해 데이터를 정규 분포에 가깝게 만들 수 있다.
    
- 비모수적 통계 분석
    
    정규성 가정이 필요 없는 비모수적 통계 분석 방법을 사용할 수 있다.
    
- 적절한 모델 선택
    
    머신러닝 모델링에서는 데이터 특성에 맞는 모델을 선택해야 한다.
    

## 빅데이터에서의 정규성 검정

- 데이터 크기가 크면, 귀무가설이 기각될 가능성이 높음.
    
    p-value는 데이터 크기에 민감. 데이터가 크면 정규분포에서 아주 작은 편차도 통계적으로 유의미하게 검출. 결과적으로, 데이터가 실질적으로 정규분포와 비슷해도 정규성을 기각할 가능성이 높아짐.
    
- 중심극한정리
    
    빅데이터 분석에서 표본 평균은 중심극한정리(Central Limit Theorem, CLT)에 의해 정규분포를 따르는 경향이 있음. 따라서 데이터가 정규성을 완벽히 따르지 않더라도, 통계적 검정에서 정규분포 가정을 사용할 수 있는 경우가 많음.
    
- 계산 비용
    
    일부 정규성 검정은 빅데이터에서 계산 속도가 느려질 수 있음. 효율적인 알고리즘이 필요하거나 샘플링 기반 검정을 고려할 수 있음.
    
- 정규성을 엄격히 검정해야 하는 경우
    
    위의 여러 이유로 데이터의 크기가 크면, 반드시 정규성 검정을 할 필요는 없음. 그럼에도, 정규성 검정을 해야한다면, 빅데이터에 맞는 검정 방법(예: [D'Agostino's K-squared test](https://en.wikipedia.org/wiki/D%27Agostino%27s_K-squared_test))을 고려.
    

---

## Appendix

## Reference

- <https://en.wikipedia.org/wiki/Normality_test>
- <https://towardsdatascience.com/stop-testing-for-normality-dba96bb73f90>
```
