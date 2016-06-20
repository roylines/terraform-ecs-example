module "sysdig" {
  //source = "git::https://github.com/roylines/terraform-ecs-sysdig" 
  source = "../terraform-ecs-sysdig" 
  // don't change these
  vpc = "${var.vpc}"
  cluster_id = "${module.ecs.cluster_id}"
  desired_count = "${var.cluster_desired_size}"
  access_key = "${var.sysdig_access_key}"
}

