provider "aws" {
  region = var.region
}

module "network" {
  source = "./modules/network"
}

module "web_servers" {
  source             = "./modules/web_servers"
}
