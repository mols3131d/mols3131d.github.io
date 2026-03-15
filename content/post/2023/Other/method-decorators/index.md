---
title: Method Decorators
date: 2023-11-22T00:00:00Z
description: "**Method Decorators** --- `@staticmethod` 클래스의 인스턴스 상태와 무관하게 동작하는 메서드를 정의할 때 사용. @staticmethod로 정의된 메서드는 클래스나 인스턴스의 상태를 변경하지 않음. 메서드는 독립적으로 작동하며, 클래스나 인스턴스와 ..."
categories:
  - Other
tags:
  - _legacy
fmContentType: hugo-content
---

## **Method Decorators**

---

## `@staticmethod`

클래스의 인스턴스 상태와 무관하게 동작하는 메서드를 정의할 때 사용.

@staticmethod로 정의된 메서드는 클래스나 인스턴스의 상태를 변경하지 않음. 메서드는 독립적으로 작동하며, 클래스나 인스턴스와 무관한 매개변수만을 받는다.

```python
class Math:
    @staticmethod
    def add(a, b):
        return a + b
```

## `@classmethod`

첫 번째 인자로 클래스(cls)를 받는 메서드를 정의할 때 사용.

이 메서드는 클래스 상태에 작용하며, 클래스 변수에 접근하거나 변경할 수 있음.

```python
class MyClass:
    class_var = 0

    @classmethod
    def increment(cls):
        cls.class_var += 1
```

## `@property`

인스턴스의 속성에 대한 게터(getter) 메서드를 정의할 때 사용.

이 메서드는 특정 속성을 반환하며, 이 속성에 대한 접근을 제어할 수 있음.

게터 메서드는 속성 값을 검증하거나, 속성에 접근할 때 추가적인 로직을 실행하는 데 사용될 수 있음.

```python
class MyClass:
    @property
    def var(self):
        return self._var
```

## `@var.setter`

인스턴스의 속성에 대한 세터(setter) 메서드를 정의할 때 사용.

이 메서드는 특정 속성의 값을 설정하며, 이 속성에 대한 변경을 제어할 수 있음.

세터 메서드는 속성 값을 검증하거나, 속성이 변경될 때 추가적인 로직을 실행하는 데 사용될 수 있음.

```python
@var.setter
def var(self, value):
    if value < 0:
        raise ValueError("Cannot set negative value")
    self._var = value
```
