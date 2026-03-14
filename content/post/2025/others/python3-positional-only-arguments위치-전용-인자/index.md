---
title: "Python3 Positional-Only Arguments(위치 전용 인자)"
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

# Python3 Positional-Only Arguments(위치 전용 인자)

Category: others
Tags: Computer Language :: Python, Computer Language :: Python :: 3
Last Edited Date: 2025-04-10
Created Date: 2025-04-10
Related POST: Python3 Keyword-Only Arguments(키워드 전용 인자) (https://www.notion.so/Python3-Keyword-Only-Arguments-1d013d7e58b98051ac6fe9343fc1fddf?pvs=21)

Python을 사용하면서 help 함수를 사용하다가 함수의 인자에 “/” 기호가 있는 것을 보았다. 이 때, “/” 기호는 앞의 인자들은 Positional-Only Arguments(위치 전용 인자)임을 나타낸다. 

```python
def func(a, b, /, c, d):
    ...
```

위 예시에서 인자 a와 b는 위치 전용 인자이므로, `func(a="", b="")` 와 같이 인자에 전달할 수 없다.

## Reference

[Python Positional-Only Arguments](https://www.tutorialspoint.com/python/python_positional_only_arguments.htm)
