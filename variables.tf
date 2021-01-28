variable "primary_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = ""
}
variable "azs" {
  description = "The availability zones for the VPC"
  type        = list(string)
  default     = []
}
variable "database_subnets" {
  description = "List of database subnets"
  type        = list(any)
  default     = []
}
variable "web_server_subnets" {
  description = "List of web server subnets"
  type        = list(any)
  default     = []
}

variable "region" {
  description = "The region"
  type        = string
  default     = ""
}