variable "count_ec2_instance" {
  description = "number of ec2 instance"
  type        = number
  default     = 1
}

variable "ec2_name" {
  description = "Name of bastion"
  type        = string
  default     = "management-jenkins-server"
}
variable "public_ip" {
  description = "Public Ip "
  type        = bool
  default     = false 
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
variable "volume_size" {
  description = "volume size"
  type        = number
  default     = 8
}

variable "volume_type" {
  description = "volume type"
  type        = string
  default     = "gp2"
}

variable "ami_id" {
  description = "Name of Launch configuration"
  type        = string
  default     = "ami-05ba3a39a75be1ec4"
}
variable "key_name" {
  description = "Key name of Launch configuration"
  type        = string
  default     = "Jenkins_key"
}
variable "instance_type" {
  description = "Name of Launch configuration"
  type        = string
  default     = "t2.micro"
}
variable "encrypted_volume" {
  type        = bool
  description = "Optional) Whether to enable volume encryption. Defaults to false. Must be configured to perform drift detection."
  default     = false
}