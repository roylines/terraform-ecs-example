module "ecs" {
  source = "github.com/roylines/terraform-ecs"
  vpc = "${var.vpc}"
}

