resource "aws_db_instance" "postgres_rds" {
  identifier_prefix     = var.db_name
  engine                = "postgres"
  allocated_storage     = 10
  instance_class        = var.instance_class
  name                  = var.db_name
  username              = var.db_user
  skip_final_snapshot   = true
  password              = var.db_password
  port                  = var.db_port
}
