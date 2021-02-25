terraform {
  required_version = ">= 0.13"
  backend "s3" {}
}

provider "aws" {
  region = var.region
}

module "vpc-app" {
  source              = "./modules/vpc"
  region              = var.region
  label               = "app"
  vpc_name            = "${var.env}-app-vpc"
  vpc_description     = "Host VPC app"
  vpc_cidr            = var.vpc_cidr
  vpc_private_subnets = var.vpc_private_subnets
  vpc_public_subnets  = var.vpc_public_subnets
  vpc_azs             = var.vpc_azs
  tags                = var.tags
}
