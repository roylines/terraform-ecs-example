module "datadog" {
  source = "git::https://github.com/roylines/terraform-ecs-datadog?ref=v1.1.0" 
  vpc = "${var.vpc}"
  cluster_id = "${module.ecs.cluster_id}"
  desired_count = "${var.cluster_desired_size}"
  api_key = "${var.datadog_api_key}"
  account_id = "${var.datadog_account_id}"
  external_id = "${var.datadog_external_id}"
}
