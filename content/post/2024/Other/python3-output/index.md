---
title: "Python3 출력 방법: print()와 sys.stdout.write() 비교"
description: 기본적인 print() 함수와 더 세밀한 제어가 가능한 sys.stdout.write()의 차이점과 사용 사례를 정리합니다.
date: 2024-12-30
categories:
  - Other
tags:
  - _legacy
  - output
  - python
preview: null
draft: false
math: false
fmContentType: hugo-content
---

Python에서 데이터를 콘솔에 출력하는 가장 흔한 방법인 `print()`와, 저수준 인터페이스인 `sys.stdout.write()`를 비교해 봅니다.

## `print()`

파이썬의 표준 출력 함수입니다. 사용하기 쉽고 다양한 기능을 제공합니다.

```python
print("Hello Python")
```

- **특징**: 출력 후 자동으로 줄바꿈(`\n`)이 추가되며, 여러 인자를 공백으로 구분하여 출력할 수 있습니다.

## `sys.stdout.write()`

표준 출력 스트림에 직접 문자열을 쓰는 방식입니다.

```python
import sys

sys.stdout.write("Hello, ")
sys.stdout.write("world!\n") # 줄바꿈을 직접 명시해야 함
```

### `print()`와의 차이점

1. **성능**: 대량의 데이터를 출력할 때 `print()`보다 약간 더 빠를 수 있습니다.
2. **줄바꿈 제어**: 자동으로 줄을 바꾸지 않으므로 개행 타이밍을 직접 제어해야 합니다.
3. **타입 제한**: `print()`는 숫자 등 다른 타입도 알아서 변환해주지만, `write()`는 반드기 **문자열(str)** 타입만 인자로 받을 수 있습니다.

```python
import sys

# 오류 발생
# sys.stdout.write(3) 

# 직접 형변환 필요
sys.stdout.write(str(3))
```
