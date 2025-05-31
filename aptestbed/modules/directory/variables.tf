variable "directory_name" {
  description = "The name of the directory."
}

variable "directory_password" {
  description = "The password for the directory admin."
  sensitive   = true
}

variable "vpc_id" {
  description = "The VPC ID where the directory will be created."
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs where the directory will be created."
  type        = list(string)
}