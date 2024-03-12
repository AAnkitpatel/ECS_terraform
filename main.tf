module "vpc" {
  source = "./modules/vpc"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
output "subnet_ids" {
  value = module.vpc.subnet_id
}