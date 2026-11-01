# 🐮 Wisecow Application — Kubernetes Deployment with TLS & Automated CI/CD

[![CI/CD Pipeline](https://github.com/ChandraprakashAnandakumar/wisecow-app/actions/workflows/deploy.yml/badge.svg)](https://github.com/ChandraprakashAnandakumar/wisecow-app/actions/workflows/deploy.yml)
[![Docker Hub](https://img.shields.io/badge/Docker_Hub-chandraprakashanandakumar-blue?logo=docker)](https://hub.docker.com/r/chandraprakashanandakumar/wisecow)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestrated-326CE5?logo=kubernetes&logoColor=white)](https://kubernetes.io)

This repository contains the end-to-end containerization, Kubernetes manifest configurations, secure TLS implementation, and automated Continuous Integration & Continuous Deployment (CI/CD) pipeline for the **Wisecow** application.

---

## 📌 Architecture & Design Overview

```text
[ Developer Commit / Push ] 
          │
          ▼
   [ GitHub Actions ]
    ├── Job 1: Build & Push Docker Image (Docker Hub)
    │            ├── Tag: latest
    │            └── Tag: <commit-sha>
    └── Job 2: Continuous Deployment (KinD Kubernetes Cluster)
                 ├── 1. Spin up KinD K8s Cluster
                 ├── 2. Provision TLS Secret (wisecow-tls-secret)
                 ├── 3. Deploy K8s Manifests (Deployment, Service, Ingress)
                 └── 4. Verify Rollout (Zero-downtime Rollout Verification)

## Output Preview

<img width="365" height="247" alt="image" src="https://github.com/user-attachments/assets/72998b05-92e7-4b6e-8f16-aa577ebb79a2" />

