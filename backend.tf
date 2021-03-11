##############################################################################################
### BACKEND
terraform {
  backend "s3" {
    bucket  = "terraform-state-ifpr-fredsilvas"
    key     = "core/route53/terraform-private-zone.tfstate"
    region  = "sa-east-1"
    encrypt = "true"
  }
}