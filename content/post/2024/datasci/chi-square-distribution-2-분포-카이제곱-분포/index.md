---
title: "Chi-Square Distribution (χ2 분포, 카이제곱 분포)"
date: 2024-11-26T00:00:00Z
description: ""
categories:
  - DataSci
tags:
  - legacy
fmContentType: hugo-content
---

아래의 수식으로 정의됨.

$$
\begin{equation}
Q = \sum_{i=1}^{k}X_i^2
\end{equation}
$$

여기서,  $X_i$는 서로 독립적인 표준 정규 확률 변수. 

카이제곱 분포는 아래와 같이 표현할 수 있음

$$
\begin{equation}
\chi^2 = Z_1^2 + Z_2^2 + \dots + Z_k^2
\end{equation}
$$

여기서, $Z_i$는 표준 정규분포를 따름.

# 특징

---

- **항상 양의 값**
    
    카이제곱 분포는 0 이상의 값만을 가집니다.
    
- **비대칭성**
    
    오른쪽으로 치우친 분포 형태를 보입니다.
    
- **자유도**
    
    자유도는 더해진 표준정규분포의 수.
    
    $k$는 자유도(degrees of freedom)로, 분포의 형태를 결정하는 중요한 매개변수. 즉, 분포의 모양은 자유도(df)에 따라 결정. 
    
    ![Chi-square distribution PDF](https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Chi-square_distributionPDF.png/405px-Chi-square_distributionPDF.png)
    
    Chi-square distribution PDF
    
    ![Chi-square distribution CDF](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Chi-square_distributionCDF.png/405px-Chi-square_distributionCDF.png)
    
    Chi-square distribution CDF
    

---

# **Appendix**

## Reference

[카이제곱 분포](https://ko.wikipedia.org/wiki/%EC%B9%B4%EC%9D%B4%EC%A0%9C%EA%B3%B1_%EB%B6%84%ED%8F%AC)

[](https://namu.wiki/w/%EC%B9%B4%EC%9D%B4%EC%A0%9C%EA%B3%B1%EB%B6%84%ED%8F%AC)

[카이제곱 분포와 검정 - 공돌이의 수학정리노트 (Angelo's Math Notes)](https://angeloyeo.github.io/2021/12/13/chi_square.html)

[카이제곱 분포와 검정](https://www.youtube.com/watch?v=_GrdeYtYLO4)

## See also E**xternal URI**
