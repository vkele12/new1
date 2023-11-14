provider "aws" {
  region = "ap-south-1"  # Set your desired AWS region
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

resource "aws_iam_role" "example_role" {
  name = var.role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

output "role_arn" {
  value = aws_iam_role.example_role.arn
}
