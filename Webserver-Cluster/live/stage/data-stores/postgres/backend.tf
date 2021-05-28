terraform {
  backend "s3" {
    key             = "stage/data-stores/postgres/terraform.tfstate"
    bucket          = "suhas-terraform-state"
    dynamodb_table  = "suhas-terraform-locks"
    encrypt         = true
    region          = "us-east-1"
  }
}
