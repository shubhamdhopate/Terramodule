terraform {
  backend "s3" {
    bucket  = "management-bucket-code"
    key     = "key/terraform.tfstate"
    region  = "ap-south-1"
    profile = "shubham"
  }
}
module "vpc" {
  source                                               = "OT-CLOUD-KIT/vpc/aws"
  version                                              = "0.0.6"
  vpc_name                                             = var.vpc_name
  cidr_block                                           = var.cidr_block
  instance_tenancy                                     = var.instance_tenancy
  tags                                                 = var.tags
  enable_dns_support                                   = var.enable_dns_support
  enable_dns_hostnames                                 = var.enable_dns_hostnames
  pub_subnet_name                                      = var.pub_subnet_name
  pvt_subnet_name                                      = var.pvt_subnet_name
  public_subnets_cidr                                  = var.public_subnets_cidr
  private_subnets_cidr                                 = var.private_subnets_cidr
  avaialability_zones                                  = var.avaialability_zones
  igw_name                                             = var.igw_name
  enable_igw_publicRouteTable_PublicSubnets_resource   = var.enable_igw_publicRouteTable_PublicSubnets_resource
  pub_rt_name                                          = var.pub_rt_name
  nat_name                                             = var.nat_name
  enable_nat_privateRouteTable_PrivateSubnets_resource = var.enable_nat_privateRouteTable_PrivateSubnets_resource
  pvt_rt_ame                                           = var.pvt_rt_ame
  enable_vpc_logs                                      = var.enable_vpc_logs
  enable_aws_route53_zone_resource                     = var.enable_aws_route53_zone_resource
  enable_public_web_security_group_resource            = var.enable_public_web_security_group_resource
  enable_pub_alb_resource                              = var.enable_pub_alb_resource
  alb_name                                             = var.alb_name
  pvt_zone_name                                        = var.pvt_zone_name
  public_web_sg_name                                   = var.public_web_sg_name
  logs_bucket                                          = var.logs_bucket
  alb_certificate_arn                                  = var.alb_certificate_arn
  logs_bucket_arn                                      = var.logs_bucket_arn
}

