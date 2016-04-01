module "www" {
  source = "github.com/roylines/terraform-ecs-microservice"
  
  vpc_id = "${module.ecs.vpc_id}"
  vpc = "${var.vpc}"
  subnets = "${module.ecs.subnets}"
  cluster_id = "${module.ecs.cluster_id}"
  private_zone_id = "${module.ecs.private_zone_id}"

  // change these
  name = "www"
  image = "roylines/nginx"
  port = 8000
  desired_count = 2
}

