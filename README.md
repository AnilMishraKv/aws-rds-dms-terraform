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


## Schema Creation with AWS Schema Conversion Tool (SCT)

            ![AWS-SCT](https://github.com/AnilMishraKv/aws-rds-dms-terraform/assets/111087144/6b1e2161-e7ef-4173-b3ac-c61aa29108cd)

Install AWS Schema Conversion Tool (SCT): Download and install SCT on your local machine.

Create a New SCT Project: Open SCT, create a new project, and select source and target database engines (e.g., MySQL as source and Amazon RDS for MySQL as target).

Connect to Source and Target Databases: Configure SCT to establish connections to your source and target databases by providing necessary connection details.

Analyze and Convert Schema: Perform schema analysis using SCT to identify any compatibility issues or required modifications for the target database. Convert the schema to the target database format using SCT's conversion features.

Review and Apply Schema Changes: Review the converted schema, modify if necessary for compatibility, and apply the changes to the target database.

Validation and Testing: Validate the converted schema by checking data types, constraints, and indexes in the target database.

## Setting Up AWS DMS Components

Execute the Terraform commands as outlined in the README to initialize, validate, and apply the configurations for creating the required AWS DMS components.

Create DMS Migration Task (Manually):

Log in to the AWS Management Console.

Navigate to the "Database Migration Service" page.

Create migration tasks by specifying source and target databases, migration type, etc.

## Destruction:

To tear down the infrastructure when no longer needed, run:
```
terraform destroy
```

## Output

An output variable named db_endpoint is defined in the main.tf file. After successful deployment, Terraform will display the endpoint of the created RDS instance. This endpoint can be used to access the RDS instance from applications.
