---
title: PowerShell에서 conda activate 실행시키는 방법. conda init powershell
date: 2024-03-28T00:00:00Z
description: ""
categories:
  - Other
tags:
  - _legacy
  - conda
  - powershell
fmContentType: hugo-content
---

## 요약

1. 기본 PowerShell을 관리자 권한으로 실행
2. **`conda update** --all`
3. **`conda init** powershell`
4. **`Set-ExecutionPolicy** -ExecutionPolicy RemoteSigned`

---

## 문제 설명

- 환경
    - Windows11-64bit-23H2
    - miniforge-23.11.0
        
        [https://github.com/conda-forge/miniforge](https://github.com/conda-forge/miniforge)
        
    - PowerShell-5.1.22621.2706
    - [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701)-1.19.10573.0
        
        [https://github.com/microsoft/terminal](https://github.com/microsoft/terminal)
        
- 발생한 문제에 대한 설명
    - powershell(관리자 권한으로 실행)에서 `conda activate` 명령이 에러 발생.
        
        ```powershell
        PS C:\Users\username> conda activate envname
        
        CondaError: Run 'conda init' before 'conda activate'
        ```
        

## 해결을 위한 시도

- `conda init powershell` 명령을 실행하고 다시 시도 했지만, 해결되지 않음.
    
    ```powershell
    PS C:\Users\username> conda init powershell
    no change     C:\Users\username\miniforge3\Scripts\conda.exe
    no change     C:\Users\username\miniforge3\Scripts\conda-env.exe
    no change     C:\Users\username\miniforge3\Scripts\conda-script.py
    no change     C:\Users\username\miniforge3\Scripts\conda-env-script.py
    no change     C:\Users\username\miniforge3\condabin\conda.bat
    no change     C:\Users\username\miniforge3\Library\bin\conda.bat
    no change     C:\Users\username\miniforge3\condabin\_conda_activate.bat
    no change     C:\Users\username\miniforge3\condabin\rename_tmp.bat
    no change     C:\Users\username\miniforge3\condabin\conda_auto_activate.bat
    no change     C:\Users\username\miniforge3\condabin\conda_hook.bat
    no change     C:\Users\username\miniforge3\Scripts\activate.bat
    no change     C:\Users\username\miniforge3\condabin\activate.bat
    no change     C:\Users\username\miniforge3\condabin\deactivate.bat
    no change     C:\Users\username\miniforge3\Scripts\activate
    no change     C:\Users\username\miniforge3\Scripts\deactivate
    no change     C:\Users\username\miniforge3\etc\profile.d\conda.sh
    no change     C:\Users\username\miniforge3\etc\fish\conf.d\conda.fish
    no change     C:\Users\username\miniforge3\shell\condabin\Conda.psm1
    no change     C:\Users\username\miniforge3\shell\condabin\conda-hook.ps1
    no change     C:\Users\username\miniforge3\Lib\site-packages\xontrib\conda.xsh
    no change     C:\Users\username\miniforge3\etc\profile.d\conda.csh
    no change     C:\Users\username\OneDrive\����\WindowsPowerShell\profile.ps1
    No action taken.
    ```
    

## 문제 해결

## `conda init powershell`

- `conda update --all`
    
    conda를 업데이트하는 명령어.
    
    23.11.0 → 24.3.0로 업데이트 하였다.
    
- `conda init powershell`
    
    conda init 명령어. 이전에 시도했을 때에는 `conda update`를 진행하지 않고 conda init을 진행해서 변경사항이 없었지만, 업데이트 후에는 아래와 같이 몇 가지 변경사항들이 생겼다. 
    
    ```powershell
    PS C:\WINDOWS\system32> conda init powershell
    no change     C:\Users\username\miniforge3\Scripts\conda.exe
    no change     C:\Users\username\miniforge3\Scripts\conda-env.exe
    no change     C:\Users\username\miniforge3\Scripts\conda-script.py
    no change     C:\Users\username\miniforge3\Scripts\conda-env-script.py
    no change     C:\Users\username\miniforge3\condabin\conda.bat
    no change     C:\Users\username\miniforge3\Library\bin\conda.bat
    no change     C:\Users\username\miniforge3\condabin\_conda_activate.bat
    no change     C:\Users\username\miniforge3\condabin\rename_tmp.bat
    no change     C:\Users\username\miniforge3\condabin\conda_auto_activate.bat
    no change     C:\Users\username\miniforge3\condabin\conda_hook.bat
    no change     C:\Users\username\miniforge3\Scripts\activate.bat
    no change     C:\Users\username\miniforge3\condabin\activate.bat
    no change     C:\Users\username\miniforge3\condabin\deactivate.bat
    modified      C:\Users\username\miniforge3\Scripts\activate
    modified      C:\Users\username\miniforge3\Scripts\deactivate
    modified      C:\Users\username\miniforge3\etc\profile.d\conda.sh
    modified      C:\Users\username\miniforge3\etc\fish\conf.d\conda.fish
    no change     C:\Users\username\miniforge3\shell\condabin\Conda.psm1
    modified      C:\Users\username\miniforge3\shell\condabin\conda-hook.ps1
    no change     C:\Users\username\miniforge3\Lib\site-packages\xontrib\conda.xsh
    modified      C:\Users\username\miniforge3\etc\profile.d\conda.csh
    modified      C:\Users\username\OneDrive\문서\WindowsPowerShell\profile.ps1
    
    ==> For changes to take effect, close and re-open your current shell. <==
    ```
    

## PowerShell ExecutionPolicy 변경

- 기본 PowerShell 실행.
    
    이전에는 Windows Terminal에서 PowerShell을 사용했다. 이 게시물의 코드박스들을 보면,
    
    ```powershell
    PS C:\Users\username> 
    ```
    
    ```powershell
    PS C:\WINDOWS\system32>
    ```
    
    기본 경로가 다르다. 문제 해결을 위해 기본 PowerShell에서 설정을 진행했다. 이후 사용은 Windows Terminal이나 vscode와 같은 곳에서 문제없이 잘 작동되었다.
    
- PowerShell ExecutionPolicy 변경
    
    PowerShell에는 ExecutionPolicy(실행 정책)이라는게 있고, 이 문제를 해결하기 위해 실행 정책을 변경해주면 된다.
    
    [실행 정책 정보 - PowerShell](https://learn.microsoft.com/ko-kr/powershell/module/microsoft.powershell.core/about/about_execution_policies)
    
    ```powershell
    PS C:\WINDOWS\system32> Get-ExecutionPolicy -List
    
            Scope ExecutionPolicy
            ----- ---------------
    MachinePolicy       Undefined
       UserPolicy       Undefined
          Process       Undefined
      CurrentUser       Undefined
     LocalMachine       Undefined
    ```
    
    ```powershell
    PS C:\WINDOWS\system32> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
    
    실행 규칙 변경
    실행 정책은 신뢰하지 않는 스크립트로부터 사용자를 보호합니다. 실행 정책을 변경하면 about_Execution_Policies 도움말
    항목(https://go.microsoft.com/fwlink/?LinkID=135170)에 설명된 보안 위험에 노출될 수 있습니다. 실행 정책을
    변경하시겠습니까?
    [Y] 예(Y)  [A] 모두 예(A)  [N] 아니요(N)  [L] 모두 아니요(L)  [S] 일시 중단(S)  [?] 도움말 (기본값은 "N"): A
    ```
    
    ```powershell
    PS C:\WINDOWS\system32> Get-ExecutionPolicy -List
    
            Scope ExecutionPolicy
            ----- ---------------
    MachinePolicy       Undefined
       UserPolicy       Undefined
          Process       Undefined
      CurrentUser    RemoteSigned
     LocalMachine    RemoteSigned
    ```
    

---

---

## Reference

- <https://teddylee777.github.io/python/anaconda-powershell/>
- <https://bbooo.tistory.com/71/>
- <https://3billion-ly.tistory.com/entry/Powershell%EC%97%90%EC%84%9C-conda-activate%EA%B0%80-%EC%9E%91%EB%8F%99%EC%9D%B4-%EB%90%98%EC%A7%80-%EC%95%8A%EB%8A%94-%EB%AC%B8%EC%A0%9C-%ED%95%B4%EA%B2%B0%ED%95%98%EA%B8%B0>
