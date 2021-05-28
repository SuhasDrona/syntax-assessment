output "asg_name" {
  description = "The name of the auto scaling group"
  value = aws_autoscaling_group.terraform_asg_example.name
}

output "instance_security_group_id" {
  description = "The ID of the EC2 Instance Security Group"
  value = aws_security_group.terraform_lc_sg.id
}

output "ssh_private_key" {
  value = "${tls_private_key.ec2_private_key.private_key_pem}"
}
