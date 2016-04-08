module "ecs" {
  source = "git::https://github.com/roylines/terraform-ecs?ref=v2.1.0" 
  vpc = "${var.vpc}"
  ssh_public_key = "${var.ssh_public_key}"
}

