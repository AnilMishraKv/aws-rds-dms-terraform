# AWS RDS Infrastructure Deployment

This repository contains a Terraform configuration script that facilitates the deployment of an Amazon Web Services (AWS) Relational Database Service (RDS) instance using the MySQL engine. The script sets up essential resources, including a database subnet group and an RDS instance, while configuring attributes such as storage, security groups, and instance specifications.

## Table of Contents
- Prerequisites
- Usage
- Configuration
- Variables
- Implementation
- Destruction
- Output

## Prerequisites

Before using this script, make sure you have the following prerequisites in place:

- AWS account with appropriate permissions to create RDS instances.
- Terraform installed on your machine.
- Access key and secret key credentials for your AWS account.

## Usage

- Clone this repository to your local machine.
```
git clone https://github.com/Airvedatech/terraform-rds-dms.git
```

- Navigate to the repository directory.
```
cd terraform-rds-dms
```

- Open the `variables.tf` file and adjust the variable values as needed for your deployment.

## Variables

Customize your deployment by adjusting the variables in the variables.tf file. Descriptions and default values are provided to help guide your choices. Variables include:
- AWS region, access key, and secret key.
- Subnet IDs for the RDS database subnet group.
- RDS instance details such as name, username, password, allocated storage, instance type, and more.

## Configuration

- The `main.tf` file contains the primary Terraform configuration for creating the RDS instance and related resources. It defines:
  - AWS provider configuration for authentication and region.
  - Creation of an RDS database subnet group.
  - Configuration of the RDS instance, including its storage, engine, instance type, security groups, and more.

## Implementation (Video)

### Initialize the Terraform configuration by running:
```
terraform init
```

### Review the planned changes before applying the configuration:
```
terraform plan
````

### Apply the configuration to create the RDS infrastructure:
```
terraform apply
```
- When prompted, confirm the execution by entering yes.
- After the deployment completes, Terraform will display the RDS instance endpoint. This endpoint can be used to access the RDS instance.
- Visit to [AWS RDS Console (Mumbai)](https://ap-south-1.console.aws.amazon.com/rds/home?region=ap-south-1#database:id=new-mysql-rds-rds;is-cluster=false), You will see your DB. Click on it to check it availability, CPU Utilization and its endpoint.

![image (1)](https://github.com/Airvedatech/terraform-rds-dms/assets/111087144/cef97fa4-233f-49e9-9b95-7bc9a3a6d366)


## Destruction:

To tear down the infrastructure when no longer needed, run:
```
terraform destroy
```

## Output

An output variable named db_endpoint is defined in the main.tf file. After successful deployment, Terraform will display the endpoint of the created RDS instance. This endpoint can be used to access the RDS instance from applications.
