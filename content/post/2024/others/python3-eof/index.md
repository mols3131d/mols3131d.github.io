---
title: "Python3: End of File (EOF) 처리 방법"
description: 파일이나 입력 스트림의 끝(EOF)을 감지하고 파이썬에서 이를 처리하는 다양한 방식(try-except, readlines)을 알아봅니다.
date: 2024-12-30
categories:
  - Other
tags:
  - python
  - eof
  - legacy
preview: null
draft: false
math: false
fmContentType: hugo-content
---

**EOF(End of File)**는 파일이나 입력 스트림이 더 이상 데이터를 제공하지 않는 시점을 의미합니다. 파이썬에서 이를 인식하고 안전하게 종료하는 방법을 알아봅니다.

## `input()`을 사용하는 경우

`input()` 함수는 EOF를 만나면 `EOFError`를 발생시킵니다. 이를 `try-except` 문으로 잡아내어 처리할 수 있습니다.

```python
while True:
    try:
        line = input()
        print(line)
    except EOFError:
        # 입력이 종료되면 반복문 탈출
        break
```

## `sys.stdin.readlines()`를 사용하는 경우

`sys.stdin.readlines()`는 입력이 끝날 때까지 모든 줄을 읽어 리스트로 반환하므로, 명시적인 에러 처리가 필요하지 않을 수 있습니다.

```python
import sys

# EOF까지 모든 줄을 읽음
lines = sys.stdin.readlines()

for line in lines:
    print(line.strip())
```

---

## 관련 문서

- [Python3 입력 기초 및 심화](../python3-input/)
