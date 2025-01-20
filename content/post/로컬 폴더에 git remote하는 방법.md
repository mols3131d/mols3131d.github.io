---
draft: false
title: 로컬 폴더에 git remote하는 방법
aliases:
date: 2025-01-18T19:33:32+09:00
lastmod: 
expiryDate:
summary:
description: Bare Repository로 깃허브같은 서비스가 아니라 로컬 파일을 사용하는 방법
categories:
    - Others
tags:
    - Git
image:
math: false
---

# 로컬 폴더에 git remote하는 방법

Arc 브라우저를 사용하다가 최근 Zen 브라우저를 사용하고 있다. 여러 이유로 Zen을 쓰고 있지만, Arc에서 지원하던 탭 동기화 기능이 Zen은 지원하지 않아서 많은 불편함이 있었다. 그래서 프로필 데이터에서 탭 정보를 가지고 있는 데이터를 찾고 그것을 동기화하려고 한다. 이 과정에서 알게된 Git 사용법을 정리하려고 한다. 이 글에서는 Bare Repository로 깃허브같은 서비스가 아니라 로컬 파일을 사용하는 방법을 적어둔다.

## Bare Repository

> [Prompt]
>
> git의 bare 저장소에서 bare의 의미
>
> [Google Gemini 2.0 Flash Experimental]
>
> "bare"라는 단어는 "벌거벗은", "아무것도 없는"이라는 뜻을 가지고 있습니다. Git에서 "bare 저장소"라고 할 때, 이는 작업 디렉토리(Working Directory)가 없는 저장소를 의미합니다. ……

Bare Repository는 코드를 공유하고 협업할 수 있도록 중앙 집중적인 저장소이다.

(git init 명령어로 생성된 저장소는 Non-bare repository, 일반 저장소로 불리며, 작업용 저장소이다.)

## Bare Repository 생성하고, remote하기

C 드라이브의 두 폴더를 통해 설명한다.

-   C
    -   repositories
    -   repositories_2

---

1. Bare Repository를 git init --bare 명령어로 생성한다.

    repositories\new_project.git라는 폴더로 생성된다. Bare Repository의 이름에 .git을 붙히는 것은 관행으로 보인다.

    ```PowerShell
    PS C:\repositories> git init --bare "new_project.git"
    Initialized empty Git repository in C:/repositories/new_project.git/
    ```

2. Non-Bare Repository를 생성한다.

    ```PowerShell
    PS C:\repositories_2> mkdir new_project
    PS C:\repositories_2> cd new_project
    PS C:\repositories_2\new_project> git init
    ```

3. Non-Bare Repository를 Bare Repository와 연결한다.

    ```PowerShell
    PS C:\repositories_2\new_project> git remote add origin "C:\repositoies\new_project.git"
    PS C:\repositories_2\new_project> git remote -v
    origin C:\repositoies\new_project.git (fetch)
    origin C:\repositoies\new_project.git (push)
    ```

## Reference

https://thehorrors.org.uk/snippets/git-local-filesystem-remotes/

https://www.saintsjd.com/2011/01/what-is-a-bare-git-repository/

https://www.reddit.com/r/git/comments/6ncejs/comment/dk8ixyq/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button

---