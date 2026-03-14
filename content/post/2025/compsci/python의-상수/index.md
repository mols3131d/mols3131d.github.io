---
title: Python의 상수
date: 2025-08-22T00:00:00Z
description: ""
categories:
  - CompSci
tags:
  - legacy
fmContentType: hugo-content
---

1. `@property` Wrapping
    
    ```python
    def constant(f):
        def fset(self, value):
            raise TypeError
        def fget(self):
            return f()
        return property(fget, fset)
        
    class _Const(object):
        @constant
        def FOO():
            return 0xBAADFACE
        @constant
        def BAR():
            return 0xDEADBEEF
    ```
    
2. `__slot__ = ()`
    
    ```python
    class CONST(object):
        __slots__ = ()
        FOO = 1234
    
    CONST = CONST()
    print(CONST.FOO)
    ```
    

# Footnote

## Reference

[How do I create a constant in Python?](https://stackoverflow.com/questions/2682745/how-do-i-create-a-constant-in-python)

[How do I create a constant in Python?](https://stackoverflow.com/a/2688086)
