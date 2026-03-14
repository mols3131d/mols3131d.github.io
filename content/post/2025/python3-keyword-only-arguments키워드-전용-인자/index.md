---
title: "Python3 Keyword-Only Arguments(키워드 전용 인자)"
date: 2025-04-10T00:00:00Z
description: ""
categories:
  - others
tags:
  - legacy
  - Computer Language :: Python
  - Computer Language :: Python :: 3
fmContentType: hugo-content
---

# Python3 Keyword-Only Arguments(키워드 전용 인자)

Category: others
Tags: Computer Language :: Python, Computer Language :: Python :: 3
Last Edited Date: 2025-04-10
Created Date: 2025-04-10
Related POST: Python3 Positional-Only Arguments(위치 전용 인자) (https://www.notion.so/Python3-Positional-Only-Arguments-1d013d7e58b98075ae7aee9c1d07f891?pvs=21)

```python
def func(a, b, /, *, c, d):
    ...
```

위의 예시에서 `*` 인자는 `*` 뒤에 있는 인자 c와 d가 키워드 전용 인자임을 나타낸다. 키워드 전용 인자는 함수 호출에서 인자 전달할 때, 반드시 `func("a", "b", c="c", d="d")` 이런 식으로 해야한다. 

## Reference

[Python Keyword-Only Arguments](https://www.tutorialspoint.com/python/python_keywordonly_arguments.htm)
