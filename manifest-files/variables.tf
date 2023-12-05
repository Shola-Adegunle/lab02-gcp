//// VPC BLOCK ////
variable "vpc_name" {
  type    = string
  default = "terraform-vpc"
}


//// SUBNET CIDR BLOCK ////
variable "public_cidr_range" {
  type    = string
  default = "10.0.1.0/24"
}

variable "region" {
  type    = string
  default = "europe-west2"
}

