---
title: "분산분석 (ANOVA, Analysis of Variance)"
date: 2023-07-29T00:00:00Z
description: "세 개 이상의 집단 간 평균 차이를 검정하는 분산분석(ANOVA)의 유형별(일원, 이원, 다변량) 개념과 Python 실습"
categories:
  - DataSci
tags:
  - statistics
  - anova
  - hypothesis-testing
fmContentType: hugo-content
---

분산분석(ANOVA, Analysis of Variance)은 세 개 이상의 집단을 비교할 때 사용되는 통계적 방법입니다. 기본 목적은 모든 집단의 평균이 동일한지를 가설로 검정하는 것입니다.

## 분산분석의 유형

| 구분 | 명칭 | 독립변수 개수 | 종속변수 개수 |
| --- | --- | --- | --- |
| 단일변량 분산분석 | 일원배치 분산분석 (One-way) | 1 | 1 |
| | 이원배치 분산분석 (Two-way) | 2 | 1 |
| | 다원배치 분산분석 | 3 이상 | 1 |
| 다변량 분산분석 | MANOVA | 1 이상 | 2 이상 |

### One-way ANOVA (일원배치 분산분석)

각 관측치의 **독립성**, 데이터의 **정규성**, 집단 간 **등분산성**을 가정합니다.

```python
import numpy as np
from scipy.stats import f_oneway

np.random.seed(42)
group1 = np.random.normal(10, 2, 30)
group2 = np.random.normal(15, 2, 30)
group3 = np.random.normal(12, 2, 30)

F_stat, p_value = f_oneway(group1, group2, group3)
print(f"F-statistic: {F_stat}, p-value: {p_value}")
```

### Two-way ANOVA (이원배치 분산분석)

두 개의 범주형 독립변수가 하나의 연속형 종속변수에 미치는 영향과 상호작용 효과를 분석합니다.

```python
import pandas as pd
import numpy as np
import statsmodels.api as sm
from statsmodels.formula.api import ols

# 가상 데이터 생성 및 분석
# ... (중략)
model = ols('value ~ C(A) * C(B)', data=df).fit()
anova_result = sm.stats.anova_lm(model, typ=2)
print(anova_result)
```

## 비모수 검정: Kruskal–Wallis test

두 개 이상의 독립적인 표본이 동일한 분포에서 나왔는지를 검정하는 비모수법입니다. 데이터가 정규성을 만족하지 않을 때 사용합니다.

---

# **Appendix**

## Reference

- [분산 분석 (Wikipedia)](https://ko.wikipedia.org/wiki/%EB%B6%84%EC%82%B0_%EB%B6%84%EC%84%9D)
