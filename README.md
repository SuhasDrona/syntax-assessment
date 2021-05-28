# Solution

## Notes:

1. The IP addresses from which the app needs to be accessed can be specified in vars.tfvars in cidr_blocks variable.

## To run:

```bash
$ cd Webserver-Cluster/global/s3
$ terraform init
$ terraform plan -out tfplan
$ terraform apply tfplan

$ cd Webserver-Cluster/live/stage/data-stores/postgres
$ terraform init -var-file=vars.tfvars
$ terraform plan -out tfplan
$ terraform apply tfplan

$ cd Webserver-Cluster/live/stage/service/webserver-cluster
$ terraform init -var-file=vars.tfvars
$ terraform plan -out tfplan
$ terraform apply tfplan
```
