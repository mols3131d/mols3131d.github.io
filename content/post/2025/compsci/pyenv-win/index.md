---
title: "pyenv-win"
date: 2025-12-30T00:00:00Z
description: "Windows 환경에서 여러 버전의 파이썬을 쉽게 관리하고 전환할 수 있게 도와주는 pyenv-win 설치 및 사용 가이드"
categories:
  - CompSci
tags:
  - legacy
  - python
  - windows
  - pyenv
  - tool
fmContentType: hugo-content
---

## 사용 흐름

1. pyenv 설치 또는 업데이트

   ```powershell
   &"${env:PYENV_HOME}\install-pyenv-win.ps1"
   ```

2. (선택) 설치 가능한 파이썬 버전 확인

   ```powershell
   pyenv install -l
   ```

3. 파이썬 설치

   ```powershell
   pyenv install <version>
   ```

4. (선택) 글로벌 버전 설정

   ```powershell
   pyenv global <version>
   ```

5. (선택) 파이썬 버전, 경로 확인

   ```powershell
   pyenv version
   ```

6. (선택) 파이썬 작동 확인

   ```powershell
   python -c "import sys; print(sys.executable)"
   ```

## 설치

<https://github.com/pyenv-win/pyenv-win/blob/master/docs/installation.md#powershell>

## 업데이트

<https://github.com/pyenv-win/pyenv-win?tab=readme-ov-file#how-to-update-pyenv>

## 명령어

<https://github.com/pyenv-win/pyenv-win?tab=readme-ov-file#usage>

## 파이썬 설치

새로운 파이썬 버전을 확인하고 시스템에 설치

### 설치 가능 목록 조회

```powershell
pyenv install -l
```

```powershell
2.4-win32
2.4.1-win32
2.4.2-win32
...
3.14.0a6
3.14.0a7-arm
3.14.0a7-win32
3.14.0a7
```

### **특정 버전 필터링 조회**

```powershell
pyenv install -l | findstr <version>
```

```powershell
pyenv install -l | findstr 3.8
```

### 특정 버전 설치

```powershell
pyenv install <version> [<version> ...]
```

```powershell
pyenv install 3.5.2
```

```powershell
pyenv install 2.4.3 3.6.8
```

| 옵션 | 설명                                     |
| ---- | ---------------------------------------- |
| -q   | 설치 마법사 없이 저소음(Quiet) 설치 가능 |

## 파이썬 버전 설정 (Switching)

설치된 버전 중 어떤 것을 사용할지 설정

| **명령어**               | **용도**                   | **비고**                                    |
| ------------------------ | -------------------------- | ------------------------------------------- |
| `pyenv global <version>` | 시스템 전체 기본 버전 설정 | 로컬 설정이 없을 때 기본으로 사용           |
| `pyenv local <version>`  | 현재 폴더 전용 버전 설정   | 해당 폴더 내에서 `python` 호출 시 우선 적용 |

## 상태 확인 및 유지보수

현재 상태를 모니터링하고 환경을 동기화하는 명령어

| **명령어**                  | **용도**                 | **비고**                                                                                                     |
| --------------------------- | ------------------------ | ------------------------------------------------------------------------------------------------------------ |
| `pyenv version`             | 현재 사용 중인 버전 확인 |                                                                                                              |
| `pyenv versions`            | 설치된 모든 버전 확인    |                                                                                                              |
| `pyenv rehash`              | 심링크(Shim) 갱신        | `pip`으로 라이브러리를 설치/삭제하거나 파일 변경 후 반드시 실행해야 하며, `.pyenv` 폴더 외부에서 실행해야 함 |
| `pyenv uninstall <version>` | 특정 버전의 파이썬 삭제  |                                                                                                              |
