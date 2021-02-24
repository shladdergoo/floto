variable "region" {
  default = "us-east-1"
}

variable "env" {}

variable "tags" {}

variable vpc_cidr {
  default = "172.30.0.0/16"
}

variable vpc_private_subnets {
  default = ["172.30.0.0/19", "172.30.32.0/19", "172.30.64.0/19"]
}

variable vpc_public_subnets {
  default = ["172.30.96.0/19", "172.30.128.0/19", "172.30.160.0/19"]
}

variable vpc_azs {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
