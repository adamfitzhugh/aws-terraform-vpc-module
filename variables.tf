variable "region" {
  description = "The region"
  type        = string
  default     = ""
}
variable "create_vpc" {
  description = "Should a VPC be created? Default is true"
  type        = bool
  default     = true
}
variable "name" {
  description = "Name to be used on resources"
  type        = string
  default     = ""
}
variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "0.0.0.0/0"
}
variable "instance_tenancy" {
  description = "Define your tenancy option for the VPC"
  type        = string
  default     = "default"
}
variable "private_subnets" {
  description = "Define list of private subnets within the VPC"
  type        = list(any)
  default     = []
}
variable "azs" {
  description = "The availability zones for the VPC"
  type        = list(string)
  default     = []
}
variable "tags" {
  description = "Define tags for your resource"
  type        = map(string)
  default     = {}
}