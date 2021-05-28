variable "alb_name" {
  description = "The name to use for this ALB"
  type = string
}

variable "subnet_ids" {
  description = "The subnet IDs to deploy to"
  type = list(string)
}

locals {
  https_port    = 443
  any_port     = 0
  any_protocol = "-1"
  tcp_protocol = "tcp"
  all_ips      = ["0.0.0.0/0"]
}

variable "cidr_blocks" {
 default = []
}
