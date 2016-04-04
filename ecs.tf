module "ecs" {
  source = "git::https://github.com/roylines/terraform-ecs?ref=v2.0.0" 
  vpc = "${var.vpc}"
  ssh_public_key = "${var.ssh_public_key}"
}

