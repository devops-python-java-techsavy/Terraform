# EC2 Instance Terraform Scripts

This repository contains Terraform scripts for provisioning AWS EC2 instances of various types. The provided scripts are intended to serve as a starting point for creating EC2 instances using Terraform.

## Prerequisites

Before you begin, ensure you have the following prerequisites:

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. An [AWS account](https://aws.amazon.com/) with appropriate permissions to create EC2 instances.
3. A valid SSH key pair in your AWS account for accessing the instances.

## Usage

1. Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/ec2-terraform.git
cd ec2-terraform


In this example, we're creating a basic EC2 instance using the aws_instance resource. Here's a breakdown of the key parts:

provider "aws": Specifies the AWS provider and the desired region.

resource "aws_instance" "example_instance": Defines the EC2 instance resource named "example_instance."

ami: Specifies the Amazon Machine Image (AMI) ID for the instance. You need to replace it with the AMI ID that corresponds to the operating system and version you want to use.

instance_type: Specifies the instance type. Replace "t2.micro" with the desired instance type, such as "m5.large," "c5.xlarge," etc.

key_name: Specifies the name of the key pair to use for SSH access to the instance. Make sure you have the specified key pair in your AWS account.

tags: Allows you to add metadata to the instance in the form of key-value pairs. The example sets a tag named "Name."

To deploy this configuration, you would save it in a .tf file (e.g., main.tf), navigate to the directory containing the file using your terminal, and execute the following commands:

terraform init: Initializes the working directory and downloads the necessary provider plugins.

terraform apply: Applies the configuration and creates the EC2 instance.

Remember to replace the placeholder values with your specific choices for AMI, instance type, key pair, and any other settings you require. For different instance types, you can modify the instance_type parameter as needed. Refer to the official AWS EC2 instance types documentation to choose the instance types that best suit your requirements.

Initialize the Terraform configuration:
terraform init

Preview the changes that Terraform will apply:
terraform plan

If the plan looks correct, apply the changes to create the EC2 instance:
terraform apply

Run the following command to destroy the resources created by Terraform:
terraform destroy

Notes
This repository is a starting point and does not cover advanced use cases or configurations.
Always follow security best practices, such as restricting access with security groups and IAM roles.
Make sure to keep your AWS credentials secure and do not hardcode them in your Terraform scripts.
Refer to the official AWS EC2 documentation for more information about EC2 instances and configurations.
