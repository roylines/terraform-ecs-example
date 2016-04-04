module "api-gateway" {
  source = "git::https://github.com/roylines/terraform-ecs-api-gateway?ref=v1.0.0" 
  // don't change these
  vpc_id = "${module.ecs.vpc_id}"
  vpc = "${var.vpc}"
  subnets = "${module.ecs.subnets}"
  cluster_id = "${module.ecs.cluster_id}"
  private_zone_id = "${module.ecs.private_zone_id}"
  public_zone_id = "${var.public_zone_id}"
  public_domain = "${var.public_domain}"
  
  // you can change these
  public_subdomain = "www"
  name = "api-gateway"
  image = "roylines/nginx"
  port = 8000
  desired_count = 2
}

