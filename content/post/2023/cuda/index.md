---
title: "CUDA"
date: 2023-05-29T00:00:00Z
description: "GPU 병렬 컴퓨팅을 위한 CUDA 프로그래밍 모델의 기초, CUDA Toolkit, cuDNN 설치 및 버전 확인 방법 정리"
categories:
  - ComputerSci
tags:
  - gpu
  - cuda
  - nvidia
  - legacy
fmContentType: hugo-content
---

CUDA(Compute Unified Device Architecture)는 NVIDIA가 개발한 GPU 병렬 컴퓨팅 플랫폼 및 프로그래밍 모델입니다. GPU의 가상 명령어셋을 사용할 수 있도록 소프트웨어 레이어를 제공하며, CUDA 코어가 장착된 NVIDIA GPU에서 작동합니다.

# 주요 구성 요소

## CUDA Toolkit
CUDA 개발에 필요한 도구와 라이브러리 모음입니다. 컴파일러(nvcc), 런타임 라이브러리, 디버깅 도구 등이 포함되어 있습니다.

## cuDNN (CUDA Deep Neural Network)
딥러닝 애플리케이션을 위한 GPU 가속 라이브러리입니다. TensorFlow, PyTorch 등 주요 프레임워크에서 딥러닝 연산을 가속화하기 위해 사용됩니다.

## GPU 드라이버
운영 체제와 그래픽 카드 사이의 통신을 담당합니다. 게이밍이나 범용 컴퓨팅 모두를 위해 최신 버전 유지가 권장됩니다.

# 장치 및 버전 확인

- **GPU 모델명 확인 (CMD)**:
  ```cmd
  wmic path win32_videocontroller get name
  ```

- **CUDA 설치 버전 확인**:
  ```cmd
  nvcc -V
  ```

# 설치 환경 확인

프레임워크(TensorFlow, PyTorch) 지원 버전에 맞춰 설치하는 것이 중요합니다.

![TensorFlow GPU 지원 버전](Untitled.png)
![System Requirements](Untitled 1.png)
![PyTorch Versions](Untitled 2.png)

> [!TIP]
> 텐서플로우와 파이토치를 동시에 사용하는 경우, 두 프레임워크가 공통으로 지원하는 CUDA 버전을 선택하는 것이 좋습니다. (예: CUDA 11.8)

---

## Reference

- [NVIDIA CUDA Toolkit](https://developer.nvidia.com/cuda-toolkit)
- [NVIDIA cuDNN](https://developer.nvidia.com/cudnn)
- [CUDA (Wikipedia)](https://ko.wikipedia.org/wiki/CUDA)
- [TensorFlow Install Guide](https://www.tensorflow.org/install/source_windows#gpu)
- [PyTorch Get Started](https://pytorch.org/get-started/previous-versions/)
