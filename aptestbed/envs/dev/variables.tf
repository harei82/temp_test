variable "directory_password" {
  sensitive = true
}
variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}
variable "aws_region" {
  default = "ap-southeast-1"
}

variable "bundle_id" {
  description = "AWS WorkSpaces bundle ID to use"
  type        = string
}

