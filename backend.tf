terraform {
  backend "s3" {
    bucket         = "anish-devops-terraform-assement-s3"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "anish-devops-terraform-assement-dynamo"
  }
}
