# Multi-tool-DevOps-automation-Terraform-Ansible-Jenkins-Docker-K8s


![Kubernetes](https://img.shields.io/badge/Kubernetes-blue?logo=kubernetes)
![Docker](https://img.shields.io/badge/Docker-lightblue?logo=docker)
![CI/CD](https://img.shields.io/badge/CI/CD-Yes-green)
![Terraform](https://img.shields.io/badge/Terraform-blue?logo=terraform)
![Ansible](https://img.shields.io/badge/Ansible-red?logo=ansible)
![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)
![Jenkins](https://img.shields.io/badge/Jenkins-red?logo=jenkins)
![Git](https://img.shields.io/badge/Git-F05032?logo=git&logoColor=white)
![K8s Master](https://img.shields.io/badge/K8s_Master-0052CC?logo=kubernetes&logoColor=white)
![K8s Worker](https://img.shields.io/badge/K8s_Worker-0066CC?logo=kubernetes&logoColor=white)

---

## 🚀 Project Overview
This project demonstrates **automated CI/CD deployment** of a web application using **Terraform, Ansible, Docker, Jenkins, and Kubernetes**.  

Key features:  
- Terraform provisions **EC2 instances** for master and worker nodes.  
- Ansible & Shell scripts configure **Docker and Kubernetes**.  
- Jenkins pipeline automates **cluster setup, pod deployment, and NodePort exposure**.  
- NodePort allows external access to your app at a **fixed port 31564**.  

---
 ![Web-Page](images/work.png) 
### ✅ Workflow Summary:

1. **Jenkins** orchestrates the whole CI/CD pipeline.  
2. **Terraform** provisions the infrastructure (EC2 master + worker nodes).  
3. **Scripts (Ansible optional)** configure Master and Worker (kubeadm init & join).  
4. **Kubernetes cluster** is formed, and pods/services are deployed.  
5. **NodePort** exposes your app on a fixed port (`31564`) for external access.  
6. Jenkins prints a **final success message with URL** to access the app.  

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
### 🛠 Languages and Tools:

<p left>
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/git/git-original.svg" alt="git" width="40" height="40"/>
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/jenkins/jenkins-original.svg" alt="jenkins" width="40" height="40"/>
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/terraform/terraform-original.svg" alt="terraform" width="40" height="40"/>
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ansible/ansible-original.svg" alt="ansible" width="40" height="40"/>
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/kubernetes/kubernetes-plain.svg" alt="kubernetes" width="40" height="40"/>
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg" alt="docker" width="40" height="40"/>
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="python" width="40" height="40"/>
</p>
---

## 🔐 Security Group Rules
Your EC2 instances use the following **Security Group inbound rules**:

| Rule ID             | Type       | Protocol | Port Range       | Source      |
| ------------------ | ---------- | -------- | ---------------- | ----------- |
| sgr-0da334608206b0fe | Custom TCP | TCP      | 8080             | 0.0.0.0/0   |
| sgr-09e3e2bc5941b88e4 | SSH        | TCP      | 22               | 0.0.0.0/0   |
| sgr-0dcf2a037b3a1cf98 | Custom TCP | TCP      | 30000 - 32786    | 0.0.0.0/0   |
| sgr-0f10b62b784e9c21c | HTTP       | TCP      | 80               | 0.0.0.0/0   |
| sgr-082f0005565639beb | Custom TCP | TCP      | 5000             | 0.0.0.0/0   |

> ⚠️ Rules with source `0.0.0.0/0` allow access from any IP. For production, restrict to trusted IPs only.  
![jenkins](images/1.png)
---

## 📦 Kubernetes Setup
- **Master Node:** Runs Kubernetes control plane.  
- **Worker Node:** Runs application pods.  
- **Pod Deployment:** YAML manifests for web apps (`node-pod.yml`, `pod.yml`).  
- **NodePort Service:** Fixed port **31564** exposes app externally.  

-![jenkins](images/2.png)--

## 🌐 Access Your App
Once deployed, access your web app using:
![jenkins](images/aws.png)
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

![jenkins](images/2.png)
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

