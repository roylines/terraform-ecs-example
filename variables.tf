variable "vpc" {
  description = "the vpc name"
  default = "ecs-example"
}

variable "max_microservice_count" {
  description = "the maximum number of microservices"
  default = 20
}

variable "newrelic_license_key" {
  description = "new relic license key"
  default = "none"
}

variable "ruxit_account" {
  description = "the ruxit account number (only needed for ruxit support)"
  default = "none"
}

variable "ruxit_token" {
  description = "the ruxit token (only needed for ruxit support)"
  default = "none"
}

variable "sysdig_access_key" {
  description = "the sysdig access key (only needed for sysdig support)"
  default = "none"
}

variable "public_zone_id" {
  description = "the hosted zone id for the domain"
}

variable "public_domain" {
  description = "the name for the domain"
}

variable "ssh_public_key" {
  description = "public key to allow ssh to cluster instances"
}

variable "cluster_desired_size" {
  description = "Desired cluster size"
  default = 2
}

