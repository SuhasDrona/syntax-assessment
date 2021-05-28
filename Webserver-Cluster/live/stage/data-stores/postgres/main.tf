module "postgres_rds" {
  source = "../../../../modules/data-stores/postgres"

  instance_class = "db.t2.micro"
  db_name = var.db_name
  db_port = var.db_port
  db_password = var.db_password
  db_user = var.db_user
  cidr_blocks = var.cidr_blocks
}
