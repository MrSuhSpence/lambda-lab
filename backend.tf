# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "yousef-test-remotestate"
    key            = "terraform-module/lambda/terraform.tfstate"
    region         = "us-east-1"
    profile        = "Youseftest"
    dynamodb_table = "tf-state-lock-july22"
  }
}
