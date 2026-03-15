---
title: "Python3 내장 탐색 방법: dir(), help(), builtins"
description: 파이썬의 내장 함수인 dir(), help()와 builtins 모듈을 사용하여 객체와 내장 요소를 탐색하는 방법을 알아봅니다.
date: 2024-12-30
categories:
  - Other
tags:
  - _legacy
  - introspection
  - python
preview: null
draft: false
math: false
fmContentType: hugo-content
---

파이썬은 대화형 셸이나 스크립트 작성 시 객체의 내부를 쉽게 들여다볼 수 있는 강력한 내장 도구들을 제공합니다.

## `dir()`

객체의 속성(변수, 함수, 클래스 등) 목록을 반환하는 내장 함수입니다. `dir(객체)` 형태로 사용하며, 객체가 생략될 경우 현재 스코프의 이름 목록을 반환합니다.

- **객체의 메서드 목록 출력**

```python
dir(str)
```

`dir(builtins)`는 내장 모듈의 내용을 보여주며, 특정 객체를 전달하면 해당 객체가 가진 모든 속성을 나열합니다.

## `help()`

객체의 도움말을 표시하는 내장 함수입니다. 객체에 대한 문서(docstring)나 사용법을 보여줍니다.

- **객체 및 함수에 대한 설명**

    ```python
    help(str)
    help(round)
    ```

- **모듈 및 모듈 내 함수 탐색**

```python
import math
help(math)
help(math.ceil)
```

### 추가 탐색 주제 (고급)

- `help("topics")`: 도움말 주제 목록 출력
- `help("symbols")`: 기호 목록 출력
- `help("keywords")`: 키워드 목록 출력

## `builtins`

파이썬의 내장 모듈로, 인터프리터가 시작될 때 자동으로 로드되는 내장 함수, 예외, 상수 등이 포함되어 있습니다.

- **내장 요소 목록 출력**

```python
import builtins
for i in dir(builtins):
    print(i)
```
