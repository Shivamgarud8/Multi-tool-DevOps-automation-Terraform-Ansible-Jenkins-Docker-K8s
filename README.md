# Multi-tool-DevOps-automation-Terraform-Ansible-Jenkins-Docker-K8s


![Kubernetes](https://img.shields.io/badge/Kubernetes-blue?logo=kubernetes)
![Docker](https://img.shields.io/badge/Docker-lightblue?logo=docker)
![CI/CD](https://img.shields.io/badge/CI/CD-Yes-green)

---

## 🚀 Project Overview
This project demonstrates **automated CI/CD deployment** of a web application using **Terraform, Ansible, Docker, Jenkins, and Kubernetes**.  

Key features:  
- Terraform provisions **EC2 instances** for master and worker nodes.  
- Ansible & Shell scripts configure **Docker and Kubernetes**.  
- Jenkins pipeline automates **cluster setup, pod deployment, and NodePort exposure**.  
- NodePort allows external access to your app at a **fixed port 31564**.  

---

## 🛠️ Tech Stack & Tools

| Tool / Service       | Purpose                                      |
| ------------------- | -------------------------------------------- |
| **Terraform**       | Provision EC2 instances and networking       |
| **Ansible**         | Configure Docker & Kubernetes on nodes       |
| **Docker**          | Containerize applications                    |
| **Kubernetes**      | Orchestrate pods & services                  |
| **Jenkins**         | Automate CI/CD deployment pipeline           |
| **NodePort**        | Expose web app externally via worker IP      |

---

## 🔐 Security Group Rules
Your EC2 instances use the following **Security Group inbound rules**:

| Rule ID             | Type       | Protocol | Port Range       | Source      |
| ------------------ | ---------- | -------- | ---------------- | ----------- |
| sgr-0da334608206b0fe | Custom TCP | TCP      | 8080             | 0.0.0.0/0   |
| sgr-09cedc742e98fb6fe | Custom TCP | TCP      | 6443             | 0.0.0.0/0   |
| sgr-09e3e2bc5941b88e4 | SSH        | TCP      | 22               | 0.0.0.0/0   |
| sgr-0dcf2a037b3a1cf98 | Custom TCP | TCP      | 30000 - 32786    | 0.0.0.0/0   |
| sgr-0c957a9e00d1d81ea | Custom TCP | TCP      | 5173             | 0.0.0.0/0   |
| sgr-0f095228ea5717391 | Custom TCP | TCP      | 10250            | 0.0.0.0/0   |
| sgr-0f10b62b784e9c21c | HTTP       | TCP      | 80               | 0.0.0.0/0   |
| sgr-082f0005565639beb | Custom TCP | TCP      | 5000             | 0.0.0.0/0   |

> ⚠️ Rules with source `0.0.0.0/0` allow access from any IP. For production, restrict to trusted IPs only.  

---

## 📦 Kubernetes Setup
- **Master Node:** Runs Kubernetes control plane.  
- **Worker Node:** Runs application pods.  
- **Pod Deployment:** YAML manifests for web apps (`node-pod.yml`, `pod.yml`).  
- **NodePort Service:** Fixed port **31564** exposes app externally.  

---

## 🌐 Access Your App
Once deployed, access your web app using:

http://<WORKER_NODE_IP>:31564


Example (for this pipeline run): 

---

## 🔧 Jenkins CI/CD Pipeline

- **Pipeline Features:**
  1. Terraform provisions infrastructure.  
  2. Scripts configure master & worker nodes.  
  3. Worker joins cluster automatically.  
  4. Deploys Kubernetes pods and services.  
  5. Displays success messages with project link and NodePort info.

- **Success Output Example:**

http://<WORKER_NODE_IP>:31564


## 🗂️ Project Folder Structure

```plaintext
multi-k8s-devops-project/
│-- terraform.pem ( Your PEM FILE) 
├─ terraform/
│   └─ main.tf
├─ scripts/
│   ├─ k8s-master.sh  ## autoclone from github 
│   ├─ k8s-slave.sh    
│   └─ all-update.sh
├─ k8s/
│   ├─ node-pod.yml
│   └─ pod.yml
└─ Jenkinsfile

```
 ---
👩‍🏫 **Guided and Supported by [Trupti Mane Ma’am](https://github.com/iamtruptimane)**  
---

👨‍💻 **Developed By:**  
**Shivam Garud**  
🧠 *DevOps & Cloud Enthusiast*  
💼 *Automating deployments, one pipeline at a time!*  
🌐 [GitHub Profile](https://github.com/Shivamgarud8)
🌐 [Medium blog](https://medium.com/@shivam.garud2011)
🌐 [linkedin](www.linkedin.com/in/shivam-garud)
🌐 [portfolio](https://shivam-garud.vercel.app/)

