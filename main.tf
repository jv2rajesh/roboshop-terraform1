module "vpc" {

  source           = "git::https://github.com/jv2rajesh/tf-module-vpc.git"

  for_each         = var.vpc
  cidr             = each.value["cidr"]
  subnets          = each.value["subnets"]

}

output "vpc" {
  value = module.vpc
}