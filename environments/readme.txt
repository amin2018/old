When running Terraform commands for the development environment, specify the path to this file using the -var-file flag
terraform plan -var-file="environments/dev/terraform.tfvars"

When running Terraform commands for the staging environment, specify the path to this file using the -var-file flag
terraform plan -var-file="environments/staging/terraform.tfvars"

When running Terraform commands for the production environment, specify the path to this file using the -var-file flag
terraform plan -var-file="environments/prod/terraform.tfvars"
