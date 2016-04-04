variable "vpc" {
  description = "the vpc name"
  default = "ecs-example"
}

variable "max-microservice-count" {
  description = "the maximum number of microservices"
  default = 20
}
