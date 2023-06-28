terraform {
  backend "s3" {
    bucket = "terraform-th"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}