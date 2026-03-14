---
title: "Chi-Square Test (카이제곱 검정)"
date: 2024-11-26T00:00:00Z
description: "범주형 데이터 분석을 위한 카이제곱 검정의 가설 설정, 통계량 계산 및 Python 실습 코드 정리"
categories:
  - DataSci
tags:
  - statistics
  - hypothesis-testing
  - chi-square
  - legacy
fmContentType: hugo-content
---

카이제곱 검정은 대규모 샘플에서 범주형 데이터(두 변수)를 분석하기 위한 통계적 가설 검정 방법입니다. 주요 목적은 교차표(contingency table) 내에서 두 범주형 변수가 서로 독립적인지 확인하거나, 관찰값과 기대값 간의 차이가 통계적으로 유의미한지 판단하는 것입니다.

# 가설 설정

- 귀무가설($H_0$): 두 변수 간에 독립적이거나, 관찰값과 기대값 사이에 차이가 없다.
- 대립가설($H_1$): 두 변수는 독립적이지 않거나, 관찰값과 기대값 간에 차이가 있다.
- 카이제곱 분포는 귀무가설이 참일 때 검정통계량의 분포를 따릅니다.

# 카이제곱 통계량

관찰값과 기대값 간의 편차를 정규화한 후 합산한 값으로 정의합니다.

$$
\begin{equation}
X^2 = \sum_i\frac{(O_i-E_i)^2}{E_i}
\end{equation}
$$

- $O_i$: $i$번째 관찰값
- $E_i$: $i$번째 기댓값

편차의 제곱을 기대값으로 나눠 정규화하고 이 값들을 합한 것으로 볼 수 있습니다.

# 특징

- 샘플 크기가 클 경우 사용.
- 관찰값이 상호 배타적인 범주로 분류되어야 함.

## 장단점

- **장점**: 범주형 데이터에 대한 직관적인 분석이 가능하며 계산이 단순함.
- **한계**: 기대빈도가 5 미만일 경우 신뢰도가 낮아지며, 인인과 관계를 설명할 수는 없음.

# 실습 Python3 코드

```python
import numpy as np
import pandas as pd
from scipy.stats import chi2_contingency

# 가상 데이터 생성 (총 1000명의 사용자)
np.random.seed(42)

# 버전 A 사용자 중 70%, 버전 B 사용자 중 60%가 접속을 유지했다고 가정
data = {
    "version": ["A"] * 500 + ["B"] * 500,
    "retention": np.concatenate([
        np.random.choice(["Yes", "No"], size=500, p=[0.7, 0.3]),
        np.random.choice(["Yes", "No"], size=500, p=[0.6, 0.4]),
    ]),
}

df = pd.DataFrame(data)

# 분할표 생성
contingency_table = pd.crosstab(df["version"], df["retention"])
print(contingency_table)

# 카이제곱 검정 수행
chi2_stat, p, dof, expected = chi2_contingency(contingency_table)

# 결과 출력
print("카이제곱 통계량:", chi2_stat)
print("p-value:", p)
```

## 검정 결과 시각화

**바 플롯을 통한 관측 빈도와 기대 빈도 비교**

![Observed vs Expected Frequencies](image.png)

**카이제곱 분포와 검정통계량 시각화**

![Chi-square Test Visualization](image 1.png)

샘플 크기가 작다면, 카이제곱 검정을 대신하여 피셔의 정확 검정(Fisher's exact test)을 고려할 수 있습니다.

---

## Reference

- [Chi-squared test (Wikipedia)](https://en.wikipedia.org/wiki/Chi-squared_test)
- [카이제곱 검정 (Wikipedia)](https://ko.wikipedia.org/wiki/%EC%B9%B4%EC%9D%B4%EC%A0%9C%EA%B3%B1_%EA%B2%80%EC%A0%95)
- [카이제곱 분포와 검정 (공돌이의 수학정리노트)](https://angeloyeo.github.io/2021/12/13/chi_square.html)
