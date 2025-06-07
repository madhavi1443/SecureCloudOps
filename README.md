# SecureCloudOps

Enterprise-grade AWS infrastructure with built-in security, compliance, and automation using Terraform.

## 🛠️ Project Overview

This project provisions a secure, auditable cloud infrastructure on AWS using Infrastructure as Code (Terraform). It is designed for enterprise workloads, aligning with the AWS Well-Architected Framework.

## 🧱 Features

- Modular VPC architecture with public and private subnets
- Bastion-hosted EC2 access for secure instance login
- IAM role-based access control (least privilege principle)
- KMS-encrypted S3 bucket for secure storage
- CloudTrail enabled for centralized audit logging
- GuardDuty enabled for real-time threat detection
- Fully automated provisioning via Terraform

## 🚀 Technologies Used

Terraform (Infrastructure as Code)

AWS EC2 (Bastion + App Instances)

AWS S3 (Private Logging Bucket)

AWS CloudTrail (Logging + Auditing)

AWS GuardDuty (Threat Detection)

AWS KMS (Encryption Key)

Git & GitHub (Version control)

SSH over Bastion (Jump-box setup)

## 📐 Architecture

> [Insert architecture diagram here — link to `architecture.png` or embed from draw.io]

- Custom VPC with public/private subnets across two AZs
- Bastion EC2 instance in public subnet (SSH entry point)
- Private EC2 instance with no public IP
- S3 bucket for centralized logging, encrypted using KMS
- GuardDuty and CloudTrail enabled for continuous threat monitoring and audit logging

## 🔐 Security Highlights

| Feature                | Description                                       |
| ---------------------- | ------------------------------------------------- |
| **Bastion Host**       | Public EC2 to access private EC2 securely via SSH |
| **Private Subnet EC2** | App instance not publicly exposed                 |
| **KMS Encryption**     | S3 bucket encrypted with customer-managed key     |
| **CloudTrail**         | Logs stored securely in encrypted S3              |
| **S3 Bucket Policy**   | Enforced policy to only allow CloudTrail writes   |
| **GuardDuty**          | Enabled for continuous threat detection           |

## 🧱 Terraform Modules & Files

| File | Description |
|------|-------------|
| `main.tf` | Core resources: EC2, VPC, subnets, IAM |
| `provider.tf` | AWS provider configuration |
| `variables.tf` | Input variables for modularity |
| `outputs.tf` | Exposed outputs: instance IPs, bucket name |
| `.terraform.lock.hcl` | Provider lock file |

## 📂 Project Structure
securecloudops/

├── main.tf

├── variables.tf

├── outputs.tf

├── provider.tf

├── .terraform.lock.hcl

├── terraform.tfstate (excluded in .gitignore)

└── securecloudops-key.pem (excluded in .gitignore)

## 📸 Key Screenshots
### 🔧 VPC Resource Map
![1  VPC resource map view – visual layout of subnets, route table, and IGW in SecureCloudOps-VPC](https://github.com/user-attachments/assets/717b779a-5341-46bb-8051-9b23216833ba)

### 🖥️ EC2 Instances Running
![1  Shows both EC2 instances (bastion + private) in running state](https://github.com/user-attachments/assets/bc07a336-511f-4ca6-9351-59c69eace069)

### 🛡️ CloudTrail + GuardDuty Summary
![1  Shows complete CloudTrail setup](https://github.com/user-attachments/assets/8a6b33a6-ab45-4326-ab7c-b3436dd04845)
![1  proactive threat monitoring](https://github.com/user-attachments/assets/09e7cc95-dcb4-4d4b-aaed-07259f2fece4)

## 🔐 Data Encryption
To ensure all logs and resources are securely encrypted at rest, a Customer Managed Key (CMK) was created using AWS KMS.
![Screenshot 2025-06-05 012518](https://github.com/user-attachments/assets/96567cf4-32b1-45c6-bfdb-43b5455b7e03)

### 🖥️ Terraform Deployment Output
Below is a snapshot of the successful Terraform infrastructure deployment including bastion EC2, S3 with encryption, and CloudTrail logging:
![terraform-deploy-output](https://github.com/user-attachments/assets/906208cc-bc11-4f9c-9370-94d70cb24db2)

### 🧠 Learning Outcomes
Built secure cloud infra via Terraform from scratch
Practiced encryption, access control, and secure networking
Understood IAM, logging, and monitoring in real-world context

### Prerequisites
- AWS CLI configured (`aws configure`)
- Terraform installed (v1.0+)
- IAM user with proper permissions

### 📸 More Screenshots  
See the [full deployment walkthrough]() for categorized step-by-step images.

## 📄 License
This project is for educational use and job portfolio demonstration only.
