---
title: Python3 dict.setdefault()
date: 2025-04-10T00:00:00Z
description: ""
categories:
  - Other
tags:
  - legacy
  - python
fmContentType: hugo-content
---

## `dict.setdefault()`

```text
setdefault(key, default=None, /) method of builtins.dict instance
    Insert key with a value of default if key is not in the dictionary.

    Return the value for key if key is in the dictionary, else default.
```

파이썬 딕셔너리의 `setdefault()` 메서드는 키가 딕셔너리에 존재하는지 확인하고, 다음과 같은 동작을 수행.

- 키가 딕셔너리에 있는 경우**:** 해당 키의 값을 반환.
- 키가 딕셔너리에 없는 경우**:** 해당 키를 딕셔너리에 추가하고, 지정된 기본값을 값으로 설정한 후 그 기본값을 반환.

## 활용

### 빈도수 세기

```python
words = ['apple', 'banana', 'apple', 'orange', 'banana', 'apple']
word_counts = {}

for word in words:
    word_counts.setdefault(word, 0)
    word_counts[word] += 1

print(word_counts)
```

```text
{'apple': 3, 'banana': 2, 'orange': 1}
```

### 그룹화 하기

```python
data = [('a', 1), ('b', 2), ('a', 3), ('c', 4), ('b', 5)]
grouped_data = {}

for key, value in data:
    grouped_data.setdefault(key, []).append(value)

print(grouped_data)
```

```text
{'a': [1, 3], 'b': [2, 5], 'c': [4]}
```

## Reference
