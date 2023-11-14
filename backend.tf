terraform {
  backend "s3" {
    bucket         = "amdocs-1-2023"
    key            = "deployment_roles/${TF_VAR_1}/user-management-deployment-role/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
   # dynamodb_table = "your-lock-table-name"
  }
}
