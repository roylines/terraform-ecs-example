variable "datadog_api_key" {
  description = "datadog api key"
}

module "datadog" {
  source = "git::https://github.com/roylines/terraform-ecs-datadog?ref=v1.0.1" 
  vpc = "${var.vpc}"
  cluster_id = "${module.ecs.cluster_id}"
  desired_count = "${var.cluster_desired_size}"
  api_key = "${var.datadog_api_key}"
}
