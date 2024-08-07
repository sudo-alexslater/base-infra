variable "aws_region" {
  description = "The region in which the resources will be deployed"
  default     = "eu-west-1"
}

variable "az_count" {
  description = "The number of availability zones to use"
  default     = 2
}

variable "cloudflare_api_token" {
  type = string
}

locals {
  service     = "base-infra"
  environment = terraform.workspace
  account_id  = local.account_id_lookup[local.environment]
  account_id_lookup = {
    "sandbox" = "141887425967"
  }
  prefix = "${local.environment}-${local.service}"
}
