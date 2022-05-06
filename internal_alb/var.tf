variable "alb_name" {
  description = "Name of ALB"
  type        = string
  default     = "management-alb-new"
}

variable "internal" {
  type    = bool
  default = true
}

variable "enable_deletion_protection" {
  default = true
  type    = bool
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "logs_bucket" {
  description = "Name of bucket where we would be storing our logs"
  type        = string
  default     = "management-bucket-logs"
}

variable "enable_logging" {
  type    = bool
  default = true
}


variable "alb_certificate_arn" {
  description = "Cretificate arn for alb"
  type        = string
  default     = "arn:aws:acm:ap-south-1:253942872677:certificate/16e5e176-7ac1-410f-b917-25897ab32a13"
}
