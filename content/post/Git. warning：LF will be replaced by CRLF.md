---
draft: false
title: Git. warning：LF will be replaced by CRLF
aliases: 
date: 2025-01-18
lastmod: 
expiryDate: 
summary: 
description: 
categories:
  - Others
tags:
  - Git
image: 
math: false
---

# 경고 발생 상황

git add . 명령어를 실행 할 때, 경고가 나타났다.

```PowerShell
PS C:\repository> git add . 
warning: in the working copy of '.gitignore', LF will be replaced by CRLF the next time Git touches it 
warning: in the working copy of 'Cargo.lock', LF will be replaced by CRLF the next time Git touches it 
warning: in the working copy of 'Cargo.toml', LF will be replaced by CRLF the next time Git touches it 
warning: in the working copy of 'src/main.rs', LF will be replaced by CRLF the next time Git touches it
```

# 경고 설명

윈도우 환경에서 Git을 사용할 때 흔히 발생하는 줄 바꿈에 관한 경고이다. 파일들이 줄 바꿈을 LF 문자로 표현하고 있지만, 사용자의 시스템은 줄 바꿈으로 CRLF 문자로 표현하고 있다. 그래서 Git이 이러한 파일을 저장소에 추가할 때 LF에서 CRLF로 변환한다는 것으로 보인다.

- LF(Line Feed): 유닉스 에서 사용되는 줄 바꿈 문자
- CR(Carriage Return): 고전적인 타자기에서 캐리지를 맨 앞으로 옮기는 데 사용되었던 문자
- CRLF(Carriage Return Line Feed): 윈도우에서 사용되는 줄 바꿈 문자

# 경고 조치

Git의 core.autocrlf 옵션을 변경했다.

```PowerShell
PS C:\repository> git config --global core.autocrlf true
```

---

# Reference

https://betterstack.com/community/questions/lf-replaced-by-crlf-why/

https://velog.io/@realzu/Git-LF-will-be-replaced-by-CRLF-in-%EC%97%90%EB%9F%AC-%ED%95%B4%EA%B2%B0%EB%B2%95

---