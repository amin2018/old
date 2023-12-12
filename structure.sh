#!/bin/bash

# Create the main directory
mkdir -p terraform-task-1

# Create the main Terraform files
touch terraform-task-1/{main.tf,variables.tf,outputs.tf,terraform.tfvars}

# Create the modules directory
mkdir -p terraform-task-1/modules/gke
mkdir -p terraform-task-1/modules/vm
mkdir -p terraform-task-1/modules/persistent_disk
mkdir -p terraform-task-1/modules/k8s_app
mkdir -p terraform-task-1/modules/cloud_sql

# Create module files
touch terraform-task-1/modules/gke/{main.tf,variables.tf,outputs.tf}
touch terraform-task-1/modules/vm/{main.tf,variables.tf,outputs.tf}
touch terraform-task-1/modules/persistent_disk/{main.tf,variables.tf,outputs.tf}
touch terraform-task-1/modules/k8s_app/{main.tf,variables.tf,outputs.tf}
touch terraform-task-1/modules/cloud_sql/{main.tf,variables.tf,outputs.tf}

# Create the environments directory
mkdir -p terraform-task-1/environments/dev
mkdir -p terraform-task-1/environments/staging
mkdir -p terraform-task-1/environments/prod

# Create environment-specific variable files
touch terraform-task-1/environments/dev/terraform.tfvars
touch terraform-task-1/environments/staging/terraform.tfvars
touch terraform-task-1/environments/prod/terraform.tfvars
