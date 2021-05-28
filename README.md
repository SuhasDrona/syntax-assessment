# How to Manage Terraform State

```bash
$ cd stage/data-stores/postgres
$ terraform init --backend-config=../../../backend.hcl
$ terraform plan -out tfplan
$ terraform apply tfplan

$ cd stage/service/webserver-cluster
$ terraform init --backend-config=../../../backend.hcl
$ terraform plan -out tfplan
$ terraform apply tfplan
```