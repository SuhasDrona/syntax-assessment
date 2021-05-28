terraform {
  backend "s3" {
    key             = "stage/services/webserver-cluster/terraform.tfstate"
    bucket          = "suhas-terraform-state"
    dynamodb_table  = "suhas-terraform-locks"
    encrypt         = true
    region          = "us-east-1"
  }
}