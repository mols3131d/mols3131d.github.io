---
title: "큰 수 만들기 [프로그래머스 Python3]"
date: 2023-06-20T00:00:00Z
description: "그리디(Greedy) 기법을 활용하여 주어진 숫자에서 k개의 수를 제거해 가장 큰 수를 만드는 알고리즘 풀이"
categories:
  - ComputerSci
tags:
  - coding-test
  - greedy
  - python
  - legacy
fmContentType: hugo-content
---

이 문제는 주어진 숫자 문자열에서 순서를 유지한 채 $k$개의 숫자를 제거하여 만들 수 있는 가장 큰 수를 찾는 문제입니다.

# 문제 접근 방식
문자의 앞부분부터 확인하면서, 현재 숫자보다 뒤에 올 숫자가 더 크다면 앞의 숫자를 지우는 방식으로 **그리디(Greedy)**하게 접근합니다.

# 구현 팁 (Stack 활용 권장)
반복문을 통해 숫자를 스택에 쌓으면서, 스택의 마지막 값이 현재 숫자보다 작고 아직 지울 수 있는 횟수($k$)가 남았다면 스택을 비우고 현재 값을 넣습니다.

*(노트: 스택을 활용한 $O(n)$ 풀이가 권장됩니다.)*

---

## Reference
- [프로그래머스 큰 수 만들기](https://school.programmers.co.kr/learn/courses/30/lessons/42883)
