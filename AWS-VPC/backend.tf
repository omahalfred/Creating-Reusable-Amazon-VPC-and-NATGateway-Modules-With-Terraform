# Store the Terraform State File in S3 and Lock with DynamoDB
terraform {
  backend "s3" {
    bucket         = "omahalfred-terraform-tfstate"
    key            = "omahalfred-terraform-tfstate/aws-vpc/terraform.tfstate"
    region         = "us-east-1"
    profile        = "terraform-user"
    dynamodb_table = "terraform-locks"
  }
}