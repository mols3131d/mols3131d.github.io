---
title: "Wilcoxon signed-rank test (Wilcoxon 부호-순위 검정)"
date: 2024-05-19T00:00:00Z
description: ""
categories:
  - DataSci
tags:
  - legacy
fmContentType: hugo-content
---

# Wilcoxon Signed-Rank Test

Wilcoxon 부호-순위 검정

---

두 대응 표본 간 차이값들의 분포에서 **중앙값이 0과 유의미하게 다른지** 확인하는 것. 즉, 동일한 대상에 대한 두 번의 측정값을 비교하여 그 차이가 통계적으로 유의미한지를 평가. 대응 표본을 다루는 비모수적 검정으로, 데이터가 정규 분포를 따를 필요가 없다.

## **가설 설정**

- **귀무가설** $𝐻0$: 두 표본의 중앙값 차이가 0이다 (즉, 차이가 없다).
- **대립가설** $𝐻1$: 두 표본의 중앙값 차이가 0이 아니다 (즉, 차이가 있다).

## **장점 및 단점**

- **장점**
    - 비모수적 검정
        
        데이터가 정규 분포를 따를 필요가 없다.
        
    - 강건성 (Robustness)
        
        비모수 검정이기 때문에 데이터의 이상값(Outlier)에 덜 민감.
        
    - 작은 표본에서도 유용.
        
        단, 표본의 크기가 너무 작으면 정확한 p-값을 계산하는 것이 어려울 수 있으며, 검정 결과의 해석에 주의가 필요.
        
- **단점**
    - 중복 순위(tied ranks)가 많을 경우 정확도가 떨어질 수 있다. (동률(tie)에 민감하다고도 한다.)
        - 검정 통계량(W)의 부정확성
            
            W는 양의 순위 합으로 계산되는데, 동률이 많으면 W 값의 분포가 정규 분포에서 멀어져 부정확해짐.
            
        - p-값 계산의 부정확성
            
            p-값은 W를 기반으로 계산되므로, W의 부정확성은 p-값 계산 오류로 이어질 수 있다. 특히 정규 근사를 사용하는 경우, 동률이 많으면 근사 정확도가 떨어져 p-값이 부정확해짐.
            
    - 평균 차이 정보 부족
        
        중앙값 차이에 초점을 맞추기 때문에 평균 차이에 대한 직접적인 정보는 제공하지 않음
        

---

# **Appendix**

## Reference

[Wilcoxon signed-rank test](https://en.wikipedia.org/wiki/Wilcoxon_signed-rank_test)

[윌콕슨 부호 순위 검정 - 공돌이의 수학정리노트 (Angelo's Math Notes)](https://angeloyeo.github.io/2021/11/26/signed_rank.html)

## See also E**xternal URI**
