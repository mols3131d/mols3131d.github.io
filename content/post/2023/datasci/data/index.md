---
title: "Data"
date: 2023-03-23T00:00:00Z
description: ""
categories:
  - DataSci
tags:
  - legacy
fmContentType: hugo-content
---

# Data

---

# 속성에 따른

```mermaid

graph LR
	D(Data)
	
	**ND**(Numerical Data**)**
	CD(**Categorical Data)
	
	D** --> **ND --> ord(Ordinal Data)
				ND --> nom(Nominal Data)

	D** --> CD --> con(**Continuous Data)
				CD --> dis(Discrete Data)**
```

- 데이터는 일반적으로 **수치형 데이터(Numerical Data)**와 **범주형 데이터(Categorical Data)**로 구분
    - 수치형 데이터는 다시 **연속형 데이터(Continuous Data)**와 **이산형 데이터(Discrete Data)**로 구분
    - 범주형 데이터는 다시 **순위형 데이터(Ordinal Data)**와 **명목형 데이터(Nominal Data)**로 구분

# 구성

## Item

개체

---

연구자 또는 관찰자가 관심을 갖는 연구 대상.

- ex) 신입사원

## Factor

요인

---

개체에 관한 특성중 연구자가 특별히 관심을 갖는 특성.

- ex) 신입사원의 경력사항, 신체조건, 경제조건 등
    - 연구자가 알고 싶어하는 공통된 특성들의 집합

## Variable

변수

---

요인을 구성하고 있는 요소

- ex) 요인이 경력사항이라면, 변수는 학위, 근무연수, 직무 등

변수는 일정한 측정 단위로 또는 숫자로 표현이 가능해야함.

## Independent variable

독립변수

---

aka. Explanatory variable(원인변수), Predictor variable(예측변수)

독립적인 변수.  다른 변수에 영향받지 않는 변수.
분석가가 조정할 수 있고, 종속변수에 영향을 줄 수 있는 변수.

통계에서 독립적이라는 말은 다른 변수에 영향을 받지 않는다는 뜻입니다. 
따라서 독립변수는 다른 변수에 영향을 받지 않습니다. 오히려 종속변수에 영향을 주는 변수 입니다.

## Dependent variable

종속변수

---

aka. Response variable(반응 변수), Outcome variable(결과 변수)

종속적인 변수. 다른 변수에 영향받는 변수.
분석가가 조정할 수 없고, 독립변수의 변화에 어떻게 변하는지 알고 싶어하는 변수.

## Confounding Variable

혼입변수

---

모형에 포함되지 않았지만 종속 변수에 영향을 미치는 변수이다.

# 척도

척도(Scale)는 어떠한 대상의 특성을 단위를 사용하여 정량화한 것을 말합니다. 

## 범주형 자료에서의 척도

### nominal scale

명목 척도

---

- 이름뿐인 척도
- ex
    - 성별(남/여), 국적(한국, 일본, 중국 등), 직업(회사원, 공무원, 자영업 등)
    - 학력은 어떻게 되십니까?
        
        1. 중졸 이하, 2. 고졸, 3. 대졸 이상
        
        1부터 3까지 선택하게 하였지만 숫자로써의 의미보다는 구분으로써의 의미를 가짐.
        

### ordinal scale

순위척도

---

- 순위를 나타내는 척도.
- ex
    - 학교 석차
- 순위척도는 단순히 순서를 매기는 척도이기 때문에 
1등과 3등의 차이와 4등과 6등간의 차이는 2등 차이이지만, 
절대적인 수치는 같지 않을 수 있다.

## 연속형 자료에서의 척도

### Interval scale

등간 척도

속성을 균일한 간격을 두고 측정하는 척도

- ex
    - 섭씨 온도
        
        섭씨 온도의 0은 물이 어는 점을 0으로 기준 삼은 것 뿐이지 온도가 없다는 뜻이 아님.
        

### ratio scale

비율 척도

---

서열성, 등간성, 비율성의 세 속성을 모두 가진 척도, 절대 영점이 있는 등간 척도

- ex) 거리, 무게, 시간

사칙연산이 가능하고 평균을 내는 것도 가능.

---

# **Appendix**

## Reference

[[개념 통계 03] 통계의 시작: 자료와 변수의 종류](https://drhongdatanote.tistory.com/3)
