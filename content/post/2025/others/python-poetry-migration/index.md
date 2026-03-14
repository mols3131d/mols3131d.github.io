---
title: "requirements.txt 대신 Poetry를 사용해보기"
description: "Python 프로젝트에서 requirements.txt로 의존성 관리가 부족할 때, Poetry로 전환하는 기본 실습 과정을 담았습니다."
date: 2025-01-28
categories:
  - Others
tags:
  - legacy
  - python
  - poetry
  - dependency-management
fmContentType: hugo-content
---

## [Poetry](https://python-poetry.org/)

> **Python packaging and dependency management made easy**

Poetry는 파이썬에서 의존성 관리 및 패키징을 위한 현대적인 도구입니다. 프로젝트에서 필요로 하는 라이브러리를 선언하면 Poetry가 자동으로 설치 및 업데이트를 관리하며, `poetry.lock` 파일을 통해 반복 가능한 설치 환경을 보장합니다.

## 설치

Poetry는 [공식 문서](https://python-poetry.org/docs/#installation)를 통해 다양한 설치 방법을 지원합니다. 윈도우 환경(PowerShell)에서는 다음 명령어를 사용할 수 있습니다.

```Powershell
# 공식 설치 스크립트 실행
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | python -
```

설치 후 버전을 확인하여 정상 설치 여부를 파악합니다.

```Powershell
poetry --version
```

## 설정

기존 프로젝트에서 `requirements.txt`를 대체하기 위해 `poetry init`을 사용할 수 있습니다.

```Powershell
cd your_project_path
poetry init
```

이 명령을 실행하면 대화형 세션이 시작되며, `pyproject.toml` 파일이 생성됩니다. 패키지 이름, 버전, 호환 파이썬 버전 등을 설정하게 됩니다.

### 생성된 `pyproject.toml` 예시

```toml
[project]
name = "your_project_name"
version = "0.1.0"
description = ""
authors = [
    {name = "your_name", email = "your_email"}
]
readme = "README.md"
requires-python = ">=3.12"

[tool.poetry]
package-mode = false

[build-system]
requires = ["poetry-core>=2.0.0,<3.0.0"]
build-backend = "poetry.core.masonry.api"
```

---

## Reference

- <https://python-poetry.org/docs/>
