#Configure your AWS Provider
provider "aws" {
    region      = var.region
    profile     = "terraform-user"
}

# Create VPC
module "vpc" {
    source                          = "../modules/vpc"
    region                          = var.region
    project_name                    = var.project_name
    vpc_cidr                        = var.vpc_cidr
    public_subnet_az1_cidr          = var.public_subnet_az1_cidr
    public_subnet_az2_cidr          = var.public_subnet_az2_cidr
    private_subnet_az1_cidr         = var.private_subnet_az1_cidr
    private_subnet_az2_cidr         = var.private_subnet_az2_cidr
}

#Create NATGateway
module "NATGateway" {
    source                          = "../modules/NatGateway"
    public_subnet_az1_id            = module.vpc.public_subnet_az1_id
    internet_gateway                = module.vpc.internet_gateway
    public_subnet_az2_id            = module.vpc.public_subnet_az2_id
    vpc_id                          = module.vpc.vpc_id
    private_subnet_az1_id           = module.vpc.private_subnet_az1_id
    private_subnet_az2_id           = module.vpc.private_subnet_az2_id
}
