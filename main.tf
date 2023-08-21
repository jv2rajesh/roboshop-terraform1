module "components" {

  source           = "git::https://github.com/jv2rajesh/tf-module-vpc.git"
  for_each         = var.vpc
  cidr             = each.value["cidr"]

}