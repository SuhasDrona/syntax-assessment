output "db_address" {
  value = aws_db_instance.postgres_rds.address
}

output "db_port" {
  value = aws_db_instance.postgres_rds.port
}
