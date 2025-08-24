# AWS Budget Alerts with Terraform

##  Overview
This project provisions an **AWS monthly budget** using Terraform and sets up **alerts via SNS email** when costs exceed thresholds (80% forecasted, 100% actual).  
It helps prevent surprise AWS bills.

---

##  Features
-  Infrastructure as Code (Terraform)
-  AWS Budgets for cost monitoring
-  SNS email notifications
-  CI/CD with GitHub Actions (terraform fmt + validate)

---

##  Architecture
Terraform → AWS Budgets → SNS → Email Alerts  

![Architecture Diagram](docs/architecture.png)

## Prerequisites

- AWS account with IAM admin user

- AWS CLI configured (`aws configure`)

- Terraform v1.6+

## Setup
1. **Clone the project**
```bash
git clone https://github.com/edwarddume55/aws-budget-alert-terraform.git
cd aws-budget-alert-terraform/terraform


2. **Initialize Terraform**
   ```bash
   terraform init


3. **Plan**
   ```bash
   terraform plan -var="notification_email=your@email.com"


4. **Apply**
   ```bash
   terraform apply -var="notification_email=your@email.com"


Confirm subscription by clicking the link AWS sends to your email.

## Outputs
Example after apply:
   ```bash
   Apply complete!
   Outputs:
   sns_topic_arn = arn:aws:sns:us-east-1:123456789012:budget-alerts-topic

## Destroy
```bash
terraform destroy -var="notification_email=your@email.com"

## Tech Stack

-Terraform

-AWS (Budgets, SNS, IAM)

-GitHub Actions (CI/CD)

##  Contact

-  [Email](mailto:edwarddume55@gmail.com)  
-  [LinkedIn](https://www.linkedin.com/in/edward-dume)  
-  [GitHub](https://github.com/edwarddume55)  
