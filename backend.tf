terraform {
  backend "s3" {
    bucket         = "your-backend-bucket-name"
    key            = "deployment_roles/${TF_VAR_1}/user-management-deployment-role/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
   # dynamodb_table = "your-lock-table-name"
  }
}
