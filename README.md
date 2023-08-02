# Terraform
Scripts for Terraform [IAC]

# Cloud Infrastructure Deployment with Terraform

This repository contains Terraform configurations to deploy infrastructure on different cloud platforms, including AWS, Google Cloud Platform (GCP), and Red Hat OpenShift. Each cloud platform has its own directory structure, modules, and configuration files.

## Directory Structure

The repository is organized into the following directories:

- `aws-infrastructure/`: Contains Terraform configurations for deploying AWS infrastructure.
- `gcp-infrastructure/`: Contains Terraform configurations for deploying GCP resources.
- `redhat-infrastructure/`: Contains Terraform configurations for deploying resources on Red Hat OpenShift or other platforms.

Each cloud platform directory includes the following files:

- `main.tf`: The main Terraform configuration file that ties together the modules and resources.
- `variables.tf`: Defines the variables used in the Terraform configuration.
- `outputs.tf`: Defines the outputs that are shown after deploying the infrastructure.
- `modules/`: Contains subdirectories with specific modules for different types of resources.

## Getting Started

1. Clone this repository to your local machine.

2. Navigate to the directory for the cloud platform you want to deploy infrastructure on (e.g., `aws-infrastructure/`).

3. Modify the `variables.tf` file to provide the necessary values for the variables defined.

4. Run the following commands to initialize and apply the Terraform configuration:

   ```sh
   terraform init
   terraform apply

