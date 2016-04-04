module "ecs" {
  source = "git::https://github.com/roylines/terraform-ecs?ref=v1.0.0" 
  vpc = "${var.vpc}"
}

