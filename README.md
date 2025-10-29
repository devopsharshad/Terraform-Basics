# 🧱 Terraform Basics

This repository contains a collection of **Terraform examples** demonstrating core concepts, AWS resource provisioning, modules, remote backends, and advanced features such as loops, conditionals, and provisioners.  
It serves as a **learning and reference project** for anyone exploring Terraform for AWS infrastructure automation.

---

## 📂 Repository Structure

| Folder | Description |
|--------|--------------|
| **Condition/** | Demonstrates use of Terraform conditional expressions to control resource creation or attribute assignment. |
| **Count/** | Examples showing the use of the `count` meta-argument and how to create multiple resources dynamically using lists and variables. |
| **Data Source/** | Shows how to use **data sources** to fetch existing AWS resource information for use in your configuration. |
| **EC2/** | Example configuration to provision an **AWS EC2 instance** using Terraform. |
| **For_Each_for/** | Demonstrates the `for_each` meta-argument for iterating over maps or sets to create multiple resources. |
| **Function/** | Includes examples using Terraform **built-in functions** and `.tftpl` templates for dynamic configuration. |
| **Jenkins/** | Example setup integrating Terraform with **Jenkins pipelines** for Infrastructure as Code automation. |
| **Local-Exec/** | Demonstrates use of the **local-exec provisioner** to run shell commands on the local machine after resource creation. |
| **Map/** | Explains how to define and use **maps** in Terraform variables. |
| **Map+For/** | Combines map variables with `for` loops to dynamically build configurations. |
| **Modules/** | Demonstrates the **modular structure** of Terraform. Includes: <br> • `child_module/` — reusable resource definition. <br> • `root_module/` — main module that calls the child module. |
| **MultipleProvider/** | Example using **multiple AWS providers** (e.g., cross-region or multi-account setups). |
| **Remot-Exec/** | Demonstrates **remote-exec provisioner**, running commands on created EC2 instances via SSH. |
| **Remote_Backend/** | Shows how to use **remote backends** (e.g., S3, Terraform Cloud) to store Terraform state securely. |
| **S3/** | Example of creating and managing **AWS S3 buckets**. |
| **Terraform_Cloud/** | Configuration for **Terraform Cloud integration** to manage runs and remote state. |
| **Variables/** | Example showing the use of variables, `terraform.tfvars`, and type constraints. |
| **workspace/** | Demonstrates **Terraform workspaces** for managing multiple environments (e.g., dev/stage/prod). |

---

## ⚙️ How to Use

1. **Clone this repository**
   ```bash
   git clone https://github.com/devopsharshad/Terraform-Basics.git
   cd Terraform-Basics
   ```

2. **Initialize Terraform**
   ```bash
   terraform init
   ```

3. **Validate configurations**
   ```bash
   terraform validate
   ```

4. **Plan and Apply**
   ```bash
   terraform plan
   terraform apply
   ```

---

## 🧩 Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.0+
- AWS Account with appropriate IAM permissions
- Configured AWS CLI credentials (`aws configure`)

---

## 🪶 Notes

- State files (`*.tfstate`, `.terraform/`) and sensitive variables are **ignored** via `.gitignore`.
- Each directory can be used **independently** — navigate into a specific folder and run `terraform init && terraform apply` to test.
- This repo is intended for **educational and demo purposes** — review before using in production.

---

## 🧠 Concepts Covered

- Providers and Resources  
- Variables and Outputs  
- Loops (`count`, `for_each`)  
- Conditional Expressions  
- Data Sources  
- Local & Remote Provisioners  
- Modules and Reusability  
- Remote State Management  
- Workspaces and Environments  
- Terraform Cloud Integration  

---

## 🧑‍💻 Author

**Harshad (devopsharshad)**  
_Cloud & DevOps Engineer | AWS | Terraform | CI/CD_
