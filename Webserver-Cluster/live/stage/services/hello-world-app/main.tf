module "hello_world_app" {
  source = "../../../../modules/services/hello-world-app"

  environment = "stage"
  db_remote_state_bucket = "suhas-terraform-state"
  db_remote_state_key = "stage/data-stores/postgres/terraform.tfstate"
  instance_type = "t2.micro"
  min_size = 1
  max_size = 1
  enable_autoscaling = true
  ami = "ami-07ebfd5b3428b6f4d"
  db_user = var.db_user
  db_name = var.db_name
  db_password = var.db_password
  custom_tags = {
    Owner = "stage-user"
    DeployedBy = "terraform"
  }
}
