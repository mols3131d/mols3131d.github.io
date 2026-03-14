---
title: "Focal Loss (포칼 로스)"
date: 2025-09-07T00:00:00Z
description: ""
categories:
  - DataSci
tags:
  - legacy
  - loss_function
  - machine_learning
fmContentType: hugo-content
---

# Focal Loss (포칼 로스)

Category: DataSci
Aliases: Focal Loss, 포칼 로스
Tags: loss_function, machine_learning
Last Edited Date: 2025-09-07
Created Date: 2025-09-07
Related POST: Class Imbalance Problem (클래스 불균형 문제) (https://www.notion.so/Class-Imbalance-Problem-26313d7e58b980848a02f3a2b7b16218?pvs=21)

클래스 불균형, Hard Negative 문제가 심한 경우, CE(Cross Entropy) 방식으로 loss를 계산하면 전체 학습이 쉬운 샘플 위주로 진행되기 때문에 모델이 어려운 샘플 학습에 충분히 집중하지 못하는 문제가 발생할 수 있다. Focal Loss은 이러한 문제를 해결하기 위해 등장한 손실 함수이다.

Focal Loss는 객체 탐지에서 극심한 클래스 불균형 문제에 직면하여 모델이 학습 시 easy negatives sample이 loss에 과하게 영향을 미치고, hard negatives sample이 학습에 적게 영향을 미치는 이유로 고안되었다. Focal Loss는 CE 함수를 변형하여 다수의 쉬운 예제(easy examples)의 가중치를 낮추어 손실 함수를 재구성한다. 이를 통해 모델은 소수의 어려운 예제(hard examples)에 집중하도록 하여, 정확도를 올린다.

# Note

- 객체 탐지에서는 객체가있는 영역(전경, foreground)보다 객체가 없는 배경(후경, background)의 비율이 많아 클래스 불균형이 큰 경우이다.

# Reference

[Focal Loss for Dense Object Detection](https://doi.org/10.48550/arXiv.1708.02002)

[Focal loss](https://medium.com/@hichengkang/focal-loss-97ec5b44a2da)

[Is Cross-Entropy All You Need? Let’s Discuss an Alternative](https://medium.com/ntropy-network/is-cross-entropy-all-you-need-lets-discuss-an-alternative-ac0df6ff5691)

# See also

[Robust-GBDT: GBDT with Nonconvex Loss for Tabular Classification...](https://arxiv.org/abs/2310.05067)

[Unified Focal loss: Generalising Dice and cross entropy-based...](https://arxiv.org/abs/2102.04525)
