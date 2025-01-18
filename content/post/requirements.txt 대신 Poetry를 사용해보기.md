---
pin: false
title: requirements.txt 대신 Poetry를 사용해보기
aliases: 
date: 2025-01-06T18:14:04+09:00
lastmod: 
description: New Post
tags:
  - Python
draft: false
categories:
  - Others
keywords: 
image: 
math: false
---
Python 프로젝트에서 `requirements.txt`로 의존성 관리는 부족하다면, Poetry로 대신할 수 있습니다. 이 글에서는 Poetry로 `requirements.txt`를 대신할 수준의 간단한 실습기를 담았습니다.

# [Poetry](https://python-poetry.org/)

> Python packaging and dependency management made easy

>Poetry는 파이썬에서 의존성 관리 및 패키징을 위한 도구입니다. 프로젝트에서 필요로 하는 라이브러리를 선언하면 Poetry가 자동으로 관리(설치/업데이트)합니다. Poetry는 반복 가능한 설치를 보장하기 위해 락 파일을 제공하며, 배포를 위한 프로젝트 빌드도 지원합니다.

## [설치](https://python-poetry.org/docs/#installation)
Poetry는 With pipx, With the official installer 등의 설치 방법을 지원합니다. 공식 문서가 잘 되어있어서 [공식 문서](https://python-poetry.org/docs/#installation)를 보고 설치하기 바랍니다. 아래는 저 처럼 윈도우를 사용한 경우의 설치 방법입니다.

1. Poetry 설치하기 
	저는 윈도우를 사용하고 있어서 Powershell에서 `(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | python -` 명령어를 입력했습니다. 
	
	공식 문서에서는 `(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -`를 입력하라고 되어있었는데, 제 컴퓨터의 환경 변수에 맞게 `py`를 `python`으로 변경하여 설치하였습니다.

2. 확인하기
	```Powershell
	poetry --version
	```

## 설정
`poetry new` 명령어로 새로운 프로젝트를 생성하는 방법도 있지만, 이 글에서는 `requirements.txt`를 대체하는 Poetry사용이므로, `poetry init`을 사용해보겠습니다. 

```Powershell
cd your_project_path
poetry init
```

`poetry init` 명령을 입력하면, 아래처럼 대화가 시작됩니다. 이 대화로 `pyproject.toml`파일이 작성됩니다. 이렇게 `Package name` 부터 시작해서 각각의 항목들을 작성하게 됩니다. 여기서 대괄호 안의 값은 빈 값으로 입력하면 채워지는 값입니다.
```Powershell
This command will guide you through creating your pyproject.toml config.

Package name [your_project_name]:  
Version [0.1.0]:  
Description []:  
Author [your_name <your_email>, n to skip]:  
License []:  
Compatible Python versions [>=3.12]:  

# ... 코드 이하 생략
```

아래는 작성된 `pyproject.toml` 파일입니다. 

```toml
[project]
name = "your_project_name"
version = "0.1.0"
description = ""
authors = [
    {name = "your_name",email = "your_email"}
]
readme = "README.md"
requires-python = ">=3.12"

dependencies = [
]

[tool.poetry]
package-mode = false

[build-system]
requires = ["poetry-core>=2.0.0,<3.0.0"]
build-backend = "poetry.core.masonry.api"
```



---
## Reference
https://python-poetry.org/docs/

---
## Related

---
