variable "region_name" {
  type        = string
  description = "AWS Region"
  default     = "ap-southeast-1"
}
variable "aws_acc_number" {
  type        = string
  description = "AWS Account Number"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "lifecycle_rules" {
  type    = any
  default = []
}

variable "master_prefix" {
  description = "Master Prefix for all AWS Resources"
  type        = string
}

variable "env_prefix" {
  description = "Environment Prefix for all AWS Resources"
  type        = string
}

variable "app_prefix" {
  description = "Application Prefix for all AWS Resources"
  type        = string
}
/*
# VPC configurations
variable "vpc_tags" {
  description = "Additional tags for VPC resources"
  type        = map(string)
}
variable "hsenid_uat_vpc_cidr" {
  description = "VPC CIDR Range"
  type        = string
}
variable "hsenid_uat_vpc_subnet_list" {
  type        = map(map(string))
  description = "Map of subnet information with subnet CIDR"
}

variable "hsenid_uat_flow_log_s3_bucket_name" {
  type        = string
  description = "Name of the S3 bucket used to store VPC Flow Logs"
}
variable "hsenid_uat_s3_kms_key_alias" {
  type        = string
  description = "Name of the KMS Key for S3 bucket"
}
## TGW Resources
variable "hsenid_uat_tgw_id" {
  type        = string
  description = "Transit Gateway ID to attach the VPC to"
  default     = ""
}
variable "tgw_subnet_name" {
  type        = list(string)
  description = "The name of the subnet(s) which will be used to place the Tranist Gateway attachment"
}
variable "tgw_attachment" {
  description = "flag to indicate attachment to TGW"
}

variable "tgw_dest_prefix_list" {
  type = string
}

#######  EC2  #######
variable "ajuba-web-uat_instances" {
  description = "ajuba web prod ec2 details"
}

variable "ajuba-app-uat_instances" {
     description = "ajuba app prod ec2 details"
     }

variable "ajuba-db-uat_instances" {
     description = "ajuba db prod ec2 details"
     }

variable "ajuba-dashboard-db-uat_instances" {
     description = "ajuba db prod ec2 details"
     }

########################################################

variable "prefix" {
  default     = "managing-alb-using-terraform"
  description = "Common prefix for AWS resources names"
}
variable "aws_region" {
  default     = "ap-southeast-1"
  description = "AWS Region to deploy VPC"
}

variable "vpc_name" {
     description = "ajuba db prod ec2 details"
     }

variable "instance_name" {
     description = "ec2 details"
     }

variable "security_group_id" {
     description = "ec2 details"
     }

variable "subnet_id" {
     description = "ec2 details"
     }
test-prod_instances
#######  RDS  #######   
*/
