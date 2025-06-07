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


## 📸 Demo Screenshots

Include:

Terraform Apply Output (Success)

S3 Bucket with CloudTrail logs

GuardDuty enabled

KMS Key created

SSH from Bastion → Private EC2

GitHub Repo Screenshot

## 🔐 Data Encryption

To ensure all logs and resources are securely encrypted at rest, a Customer Managed Key (CMK) was created using AWS KMS.

![KMS Key Configuration]

![Screenshot 2025-06-05 012518](https://github.com/user-attachments/assets/96567cf4-32b1-45c6-bfdb-43b5455b7e03)



### 🖥️ Terraform Deployment Output

Below is a snapshot of the successful Terraform infrastructure deployment including bastion EC2, S3 with encryption, and CloudTrail logging:
[Terraform Apply Output] 

![terraform-deploy-output](https://github.com/user-attachments/assets/906208cc-bc11-4f9c-9370-94d70cb24db2)

### 🧠 Learning Outcomes
Built secure cloud infra via Terraform from scratch

Practiced encryption, access control, and secure networking

Understood IAM, logging, and monitoring in real-world context

## 📄 License

This project is for educational use and job portfolio demonstration only.
