module "ecs" {
  source = "git::https://github.com/roylines/terraform-ecs?ref=v2.2.0" 
  vpc = "${var.vpc}"
  ssh_public_key = "${var.ssh_public_key}"
  cluster_desired_size = "${var.cluster_desired_size}"
  newrelic_license_key = "${var.newrelic_license_key}"
  ruxit_account = "${var.ruxit_account}"
  ruxit_token = "${var.ruxit_token}"
}
