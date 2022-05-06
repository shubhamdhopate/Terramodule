terraform {
  backend "s3" {
    bucket  = "management-bucket-code"
    key     = "internal-alb/terraform.tfstate"
    region  = "ap-south-1"
    profile = "shubham"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = "management-bucket-code"
    key     = "key/terraform.tfstate"
    region  = "ap-south-1"
    profile = "shubham"
  }
}
module "alb" {
  source                     = "OT-CLOUD-KIT/alb/aws"
  version                    = "0.0.4"
  alb_name                   = var.alb_name
  internal                   = var.internal
  security_groups_id         = data.terraform_remote_state.vpc.outputs.web_sg_id
  subnets_id                 = [data.terraform_remote_state.vpc.outputs.private_subnet_ids[0][0], data.terraform_remote_state.vpc.outputs.private_subnet_ids[0][1]]
  enable_deletion_protection = var.enable_deletion_protection
  tags                       = var.tags
  logs_bucket                = var.logs_bucket
  enable_logging             = var.enable_logging
  alb_certificate_arn        = var.alb_certificate_arn
}

