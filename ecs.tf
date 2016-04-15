module "ecs" {
  source = "git::https://github.com/roylines/terraform-ecs?ref=v2.1.1" 
  vpc = "${var.vpc}"
  ssh_public_key = "${var.ssh_public_key}"
  cluster_desired_size = "${var.cluster_desired_size}"
}
