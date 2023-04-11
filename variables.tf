variable "project" {
  type        = string
  nullable    = false
  description = "The name of the project that hosts the environment"
  default     = "PROJECT"
}

variable "service" {
  type        = string
  nullable    = false
  description = "The name of the service that will be run on the environment"
  default     = "SERVICE"
}

variable "domain_names" {
  type        = string
  nullable    = true
  description = "The project registered domain name that cloudfront can use as aliases, for now only one domain is supported"
  default     = false
}
variable "api_endpoint" {
  type        = string
  nullable    = false
  description = "The project api endpoint origin that get forwarded to an api gateway, for now only one endpoint is supported"
}

variable "acm_certificate_arn" {
  type        = string
  nullable    = false
  description = "The project certificate ARN for https"
}

variable "content_security_policy_client" {
  type        = string
  nullable    = false
  description = "The name of the service that will be run on the environment"
  default     = "SERVICE"
}
