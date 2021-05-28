output "alb_dns_name" {
  value = module.hello_world_app.alb_dns_name
}

output "ssh_key" {
  value = module.hello_world_app.ssh_key
}
