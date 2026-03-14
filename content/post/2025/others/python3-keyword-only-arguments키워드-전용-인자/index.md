---
title: "Python3 Keyword-Only Arguments(키워드 전용 인자)"
date: 2025-04-10T00:00:00Z
description: ""
categories:
  - Others
tags:
  - legacy
  - python
fmContentType: hugo-content
---

```python
def func(a, b, /, *, c, d):
    ...
```

위의 예시에서 `*` 인자는 `*` 뒤에 있는 인자 c와 d가 키워드 전용 인자임을 나타낸다. 키워드 전용 인자는 함수 호출에서 인자 전달할 때, 반드시 `func("a", "b", c="c", d="d")` 이런 식으로 해야한다.

## Reference

<https://www.tutorialspoint.com/python/python_keywordonly_arguments.htm>
