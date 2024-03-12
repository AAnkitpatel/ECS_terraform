variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  type        = string
  description = "vpc CIDR valaue"
}

variable "vpc_name" {
  default = "terrafrom_vpc"
}

variable "subnet_cidr_blocks" {
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  description = "value"

}
variable "subnet_az" {
  default = ["ap-south-1a", "ap-south-1b"]

}
variable "subnet_name" {
  default = ["terrafrom_subnet-1", "terrafrom_subnet-2"]

}

variable "igw_name" {
  default = "terrafrom_igw"

}

variable "route_block_cidr" {
  default = "0.0.0.0/0"

}

variable "route_name" {
  default = "terrafrom_route"

}

variable "terraform_route_acc" {
  default = "terraform_route_Associate"

}