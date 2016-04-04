module "www" {
  //source = "github.com/roylines/terraform-ecs-microservice"
  source = "../terraform-ecs-microservice"
  
  // don't change these
  vpc_id = "${module.ecs.vpc_id}"
  vpc = "${var.vpc}"
  subnets = "${module.ecs.subnets}"
  cluster_id = "${module.ecs.cluster_id}"
  private_zone_id = "${module.ecs.private_zone_id}"

  // you can change these
  name = "www"
  image = "roylines/nginx"
  port = 8000
  desired_count = 2
  internal = false
}

