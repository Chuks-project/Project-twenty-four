 terraform {
  backend "s3" {
    bucket         = "kuber24project"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}