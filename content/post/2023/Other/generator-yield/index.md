---
title: Generator & Yield
date: 2023-10-17T00:00:00Z
description: "Generator --- Python에서 generator는 iterator를 생성하는 함수. - Iterator: `next()` 함수를 통해 값을 순차적으로 반환할 수 있는 객체 - List나 tuple 같은 컬렉션은 모든 값을 메모리에 저장하지만, generator는 이와 달..."
categories:
  - Other
tags:
  - _legacy
fmContentType: hugo-content
---

## Generator

---

Python에서 generator는 iterator를 생성하는 함수.

- Iterator: `next()` 함수를 통해 값을 순차적으로 반환할 수 있는 객체
- List나 tuple 같은 컬렉션은 모든 값을 메모리에 저장하지만, generator는 이와 달리 한 번에 하나씩 값만을 생성
  이러한 특성 때문에 generator는 큰 데이터셋을 처리할 때 메모리 사용량을 줄이는 데 유용

```python
## count_up_to 함수는 1부터 입력받은 숫자까지의 정수를 차례대로 생성하는 generator
def count_up_to(n):
    count = 1
    while count <= n:
        yield count
        count += 1

counter = count_up_to(5)

for num in counter:
    print(num)

```

## Yield

Python의 `yield` 키워드는 generator 함수 내부에서 사용.

- `return` 과 비슷하지만, 차이가 있음.
  - **함수 실행 중단 및 재개**
    `return`은 값을 반환하고 해당 함수의 실행을 완전히 종료.
    반면에 `yield`는 값을 "생성"하고 해당 위치에서 함수의 실행을 일시적으로 중단.
    그 후, 다음 값이 필요할 때마다 (`next()` 호출 시) 함수가 재개되어 다음 값을 계속해서 생성할 수 있음.
  - **상태 유지**
    일반적인 함수가 호출될 때마다 지역 변수들은 초기화되지만, generator function 내부의 변수 상태는 yield 사이사이에도 유지.
  - **자동 StopIteration 예외 발생**
    모든 값들이 소진되어 더 이상 yield 할 값이 없으면 자동으로 StopIteration 예외를 발생.

---
