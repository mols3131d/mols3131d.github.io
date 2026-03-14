---
title: 데이터베이스 (DataBase, DB)
date: 2023-04-10T00:00:00Z
description: "데이터베이스의 정의와 관리 시스템(DBMS), 그리고 계층형, 네트워크형, 관계형 데이터베이스 모델의 특징 정리"
categories:
  - CompSci
tags:
  - database
  - dbms
  - sql
  - legacy
fmContentType: hugo-content
---

데이터베이스는 구조화된 정보 또는 데이터의 조직화된 모음으로서 일반적으로 컴퓨터 시스템에 전자적으로 저장됩니다. 일반적으로 데이터베이스 관리 시스템(DBMS)에 의해 제어되며, 연결된 애플리케이션과 함께 데이터와 DBMS를 하나로 묶어 데이터베이스 시스템이라고 부릅니다.

## Database Model

### 계층형 데이터베이스 모델 (Hierarchical Database Model)

![1:N 관계 모델](Untitled.png)

1:N 관계를 가집니다.

### 네트워크형 데이터베이스 모델 (Network Database Model)

![N:N 관계 모델](Untitled 1.png)

N:N 관계를 가집니다.

### 관계형 데이터베이스 모델 (Relation Database Model)

- 1:1, N:N, 1:N 모두 가능합니다.
- 데이터를 포함하는 테이블 간의 관계(Relationship)에 초점을 맞춘 모델입니다.
- 계층형이나 네트워크형과 달리, 특정 데이터 변화 시 유기적인 관계 지정을 통해 파급효과를 자동으로 적용할 수 있는 유연성을 제공합니다.

---

## Reference

- [데이터베이스 (Wikipedia)](https://ko.wikipedia.org/wiki/%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4)
- [계층형 모델 (Wikipedia)](https://ko.wikipedia.org/wiki/%EA%B3%84%EC%B8%B5%ED%98%95_%EB%AA%A8%EB%8D%B8)
- [데이터베이스란? (Oracle)](https://www.oracle.com/kr/database/what-is-database/)
- [네트워크 모델 (Wikipedia)](https://ko.wikipedia.org/wiki/%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC_%EB%AA%A8%EB%8D%B8)
