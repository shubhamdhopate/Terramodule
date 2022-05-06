variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}
variable "vpc_name" {
  description = "Name of the VPC to be created"
  type        = string
  default     = "management-vpc-new"
}
variable "tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}
variable "public_subnets_cidr" {
  description = "CIDR list for public subnet"
  type        = list(string)
}
variable "private_subnets_cidr" {
  description = "CIDR list for private subnet"
  type        = list(string)
}
variable "avaialability_zones" {
  description = "List of avaialability zones"
  type        = list(string)
}
variable "enable_dns_support" {
  type    = bool
  default = true
}
variable "enable_dns_hostnames" {
  type    = bool
  default = true
}
variable "instance_tenancy" {
  type    = string
  default = "default"
}
variable "enable_igw_publicRouteTable_PublicSubnets_resource" {
  type        = bool
  description = "This variable is used to create IGW, Public Route Table and Public Subnets"
  default     = true
}
variable "enable_nat_privateRouteTable_PrivateSubnets_resource" {
  type        = bool
  description = "This variable is used to create NAT, Private Route Table and Private Subnets"
  default     = true
}
variable "igw_name" {
  type        = string
  description = "Internet Gateway name"
  default     = "management-igw-new"
}
variable "pub_rt_name" {
  type        = string
  description = "Public route table name"
  default     = "management-public-rt-new"
}
variable "pub_subnet_name" {
  type        = string
  description = "public subnet name"
  default     = "management-public-subnet-new"
}
variable "nat_name" {
  type        = string
  description = "Name of Nat Gateway"
  default     = "management-nat-new"
}
variable "pvt_rt_ame" {
  type        = string
  description = "Name of Pvt Rpoute table"
  default     = "management-private-rt-new"
}
variable "pvt_subnet_name" {
  type        = string
  description = "Name of private subnets"
  default     = "management-private-subnet-new"
}
variable "enable_vpc_logs" {
  type    = bool
  default = false
}
variable "enable_aws_route53_zone_resource" {
  type        = bool
  description = "This variable is to create Route 53 Zone"
  default     = true
}
variable "enable_public_web_security_group_resource" {
  type        = bool
  description = "This variable is to create Web Security Group"
  default     = true
}

variable "enable_pub_alb_resource" {
  type        = bool
  description = "This variable is to create ALB"
  default     = false 
}
variable "alb_name" {
  type        = string
  description = "Name of ALB"
  default     = "management-alb-new"
}

variable "logs_bucket" {
  description = "Name of bucket where we would be storing our logs"
  type        = string
  default     = "management-bucket-logs"
}

variable "pvt_zone_name" {
  description = "Name of private zone"
  type        = string
  default     = "management-zone"
}

variable "public_web_sg_name" {
  type    = string
  default = "management-sg-name-new"
}
variable "alb_certificate_arn" {
  description = "Cretificate arn for alb"
  type        = string
  default     = "arn:aws:acm:ap-south-1:253942872677:certificate/16e5e176-7ac1-410f-b917-25897ab32a13"
}

variable "logs_bucket_arn" {
  description = "ARN of bucket where we would be storing vpc our logs"
  default     = "arn:aws:s3:::management-bucket-logs"
}


