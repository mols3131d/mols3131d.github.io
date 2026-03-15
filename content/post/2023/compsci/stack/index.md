---
title: Stack
date: 2023-06-12T00:00:00Z
description: "후입선출(LIFO: Last In First Out) 특성을 가지는 선형 자료구조인 스택(Stack)의 개념과 주요 연산 정리"
categories:
  - CompSci
tags:
  - _legacy
  - data-structure
fmContentType: hugo-content
---

- 후입선출(Last In First Out—LIFO) 특성을 가지는 자료구조
- 메모리에 새로 들어오는 데이터의 위치가 메모리 말단(탑 포인터)이고, 내보내는 데이터 역시 메모리 말단을 거친다.
- 입력연산은 푸시(Push), 출력연산은 팝(Pop)이라고 부른다.
- 조회연산은 피크(Peek)라고 하는데, 탑 포인터가 가리키는 데이터를 조회(확인)만 할 뿐, 탑의 순번(順番/인덱스—Index)은 변화시키지 않는 연산을 의미한다.
