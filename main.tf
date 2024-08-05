provider "aws" {
  region = var.region
}

module "network" {
  source = "./modules/network"
}

module "web_servers" {
  source             = "./modules/web_servers"
  vpc_id             = module.network.vpc_id
  public_subnets     = module.network.public_subnets
  web_security_group = module.network.web_security_group
}

module "app_servers" {
  source                 = "./modules/app_servers"
  vpc_id                 = module.network.vpc_id
  private_subnets        = module.network.private_subnets
  app_security_group     = module.network.app_security_group
}
