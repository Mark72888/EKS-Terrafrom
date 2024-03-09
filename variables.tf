variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "private_subnet" {
  description = "subnet CIDR"
  type        = list(string)
}

variable "public_subnet" {
  description = "subnet CIDR"
  type        = list(string)
}
