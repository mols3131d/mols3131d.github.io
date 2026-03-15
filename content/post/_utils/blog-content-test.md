---
title: "Blog Content Style Test (스타일 테스트)"
description: "스크롤바, 굵은 글씨, 폰트 적용 등을 확인하기 위한 테스트용 포스트입니다."
date: 2026-03-14T00:00:00Z
categories:
  - Other
tags:
  - _test
  - blog
draft: true
fmContentType: hugo-content
---

## 일반 텍스트

> 『늑대와 양피지』 1권 中

한 행상인이 있었다.
어느 마을에 들른 그는 평소대로 자신의 마차에서 밤을 보내고자 화물로 있던 모피속으로 들어가려 했다.

- 그런데 그곳에는 용모가 아름다운 소녀가 있었고 자신의 고향까지 데려다 달라는 부탁을 했다.
- 그 소녀는 달빛 아래에서 빛나는 아름다운 황갈색 머리와 사람이 아닌 큰 짐승의 귀를 가지고 있었고,
  허리에는 모피 중에서도 아주 빼어난 최상급의 털이 달린 꼬리가 자라나 있었다.
- 스스로를 현랑이라고 칭하며 마을의 보리를 잉태하고 풍요를 관장했던 신이자 수백년의 긴 세월을 살아온 늑대의 화신이라고 말했다.
  - 행상인은 그 아가씨의 부탁을 듣고 그녀와 함께 여행을 떠난다.

---

There was a traveling merchant.
Having stopped at a village, he tried to enter into the furs that were among the cargo to spend the night in his wagon as usual.

- However, there was a girl with a beautiful appearance there, and she made a request to take her to her hometown.
- That girl had beautiful tawny hair shining under the moonlight and the ears of a large beast that was not human,
  and on her waist, a tail with top-grade fur that was very outstanding even among furs was growing.
- Calling herself the Wise Wolf, she said she was a deity who conceived the village's barley and governed the harvest, and an incarnation of a wolf who had lived through a long time of several hundred years. The traveling merchant, hearing the young lady's request, sets off on a journey with her.

## 서식 테스트

> CJK 렌더링 테스트: **기호 + 한글 조사** 패턴이 잘 렌더링되는지 확인합니다.

- 스스로를 **현랑**(賢狼, 현명한 늑대)이라고 칭하며 ...
- 스스로를 **현랑(賢狼, 현명한 늑대)이라고** 칭하며 ...
- 스스로를 **현랑(賢狼, 현명한 늑대)**이라고 칭하며 ...

## 코딩 폰트 테스트

> 폰트가 한글과 영문 모두 적절한 고정폭으로 표시되는지 확인합니다.

```python
def check_style():
    """한글 주석과 영문 코드가 잘 어울리는지 확인합니다."""
    msg = "Hello, World!"
    print(f"메시지 출력: {msg}")

if __name__ == "__main__":
    check_style()
```

### 글자 폭

```markdown
|  번호 | 테스트 | 설명                                 |
| ----: | :----- | :----------------------------------- |
|     1 | 한글   | 한글                                 |
|    02 | =      | 특수문자                             |
|   003 | =>     | 특수문자 합자                        |
|  0004 | ⛔     | 고정폭 지원 이모지 (폰트마다 다름)   |
| 00005 | ⚠️     | 고정폭 미지원 이모지 (폰트마다 다름) |
```

## 코딩 폰트 합자(Ligatures) 테스트

> 폰트가 지원하는 합자가 올바르게 표시되는지 확인합니다.

### Code Block

```text
== === != !==
-> ->> => =>>
<= >= >=> <=<
>>= <<= ||= &&=
/* */ <!-- -->
```

### Code Block with Korean

> 한글이 포함된 줄(처리 단위)에서는 합자가 적용되지 않는 한계점이 있습니다.

```text
== === != !== 한글
-> ->> => =>> 한글
<= >= >=> <=< 한글
>>= <<= ||= &&= 한글
/* */ <!-- --> 한글
```

### Inline Code

`==`, `!=`, `=>`, `->`, `<=`, `===`, `if (a == b)`

- `==`
- `!=`
- `=>`
- `->`
- `<=`
- `===`
- `if (a == b)`

### Inline Code with Korean

> 한글이 포함된 줄(처리 단위)에서는 합자가 적용되지 않는 한계점이 있습니다.

`if (가 != 나)`, `if (Ga != Na)`

- `1 == "하나"`
- `1 != "둘"`

## Table

| 번호 (중앙 정렬) | 품목          | 수량 (우측 정렬) |
| :--------------: | :------------ | ---------------: |
|        1         | 복숭아 꿀절임 |                1 |
|        02        | 모피          |               10 |
|       003        | 말린 고기     |              100 |

## Emoji

| 테스트        | 일반 폰트      | 코딩 폰트                |
| :------------ | :------------- | :----------------------- |
| 기타          | 😀 🚀 🎉 🎈 ✨ | `😀` `🚀` `🎉` `🎈` `✨` |
| 동식물        | 🐱 🐶 🦊 🌲 🌸 | `🐱` `🐶` `🦊` `🌲` `🌸` |
| 사람          | 👨‍👩‍👧‍👦 👨👩        | `👨‍👩‍👧‍👦` `👨👩`              |
| 피부색 이모지 | 👍🏻 👍🏼 👍🏽 👍🏾 👍🏿 | `👍🏻` `👍🏼` `👍🏽` `👍🏾` `👍🏿` |
| 자주 쓰이는   | 💻 💡 ✅ ❌ ⚠️ | `💻` `💡` `✅` `❌` `⚠️` |

---

테스트 완료.
