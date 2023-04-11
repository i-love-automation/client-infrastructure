variable "project" {
  type        = string
  nullable    = false
  description = "The name of the project that hosts the environment"
}

variable "service" {
  type        = string
  nullable    = false
  description = "The name of the service that will be run on the environment"
  default     = "client"
}

variable "domain_names" {
  type        = string
  nullable    = true
  description = "The project registered domain name that cloudfront can use as aliases, for now only one domain is supported"
  default     = false
}

variable "api_endpoint" {
  type        = string
  nullable    = true
  description = "The project api endpoint origin that get forwarded to an api gateway, for now only one endpoint is supported"
  default     = "https://fakeapi.com"
}

variable "acm_certificate_arn" {
  type        = string
  nullable    = true
  description = "The project certificate ARN for your domain. Leave empty to use the cloudfront certificate (need to use the cloudfront domain too)"
  default     = false
}

variable "content_security_policy_client" {
  type        = string
  nullable    = false
  description = "The name of the service that will be run on the environment"
}