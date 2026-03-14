---
title: "Git: LF will be replaced by CRLF 경고 해결 방법"
description: 윈도우 환경에서 Git 사용 시 발생하는 줄 바꿈(LF/CRLF) 경고의 원인과 해결 방법을 정리합니다.
date: 2025-01-18
categories:
  - Other
tags:
  - legacy
  - git
  - troubleshooting
fmContentType: hugo-content
---

## 경고 발생 상황

`git add .` 명령어를 실행 할 때, 다음과 같은 경고가 나타날 수 있습니다.

```PowerShell
PS C:\repository> git add .
warning: in the working copy of '.gitignore', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'Cargo.lock', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'Cargo.toml', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/main.rs', LF will be replaced by CRLF the next time Git touches it
```

## 경고 설명

윈도우 환경에서 Git을 사용할 때 흔히 발생하는 줄 바꿈에 관한 경고입니다. 파일들이 줄 바꿈을 **LF** 문자로 표현하고 있지만, 사용자의 시스템은 줄 바꿈을 **CRLF** 문자로 표현하고 있습니다. 그래서 Git이 이러한 파일을 저장소에 추가할 때 LF에서 CRLF로 변환한다는 의미입니다.

- **LF(Line Feed)**: 유닉스/리눅스에서 사용되는 줄 바꿈 문자 (`\n`)
- **CR(Carriage Return)**: 고전적인 타자기에서 캐리지를 맨 앞으로 옮기는 데 사용되었던 문자 (`\r`)
- **CRLF(Carriage Return Line Feed)**: 윈도우에서 사용되는 줄 바꿈 문자 (`\r\n`)

## 경고 조치

Git의 `core.autocrlf` 옵션을 변경하여 이 경고를 해결할 수 있습니다. 윈도우 사용자의 경우 `true`로 설정하는 것이 권장됩니다.

```PowerShell
PS C:\repository> git config --global core.autocrlf true
```

---

## Reference

- <https://betterstack.com/community/questions/lf-replaced-by-crlf-why/>
- <https://velog.io/@realzu/Git-LF-will-be-replaced-by-CRLF-in-%EC%97%90%EB%9F%AC-%ED%95%B4%EA%B2%B0%EB%B2%95>
