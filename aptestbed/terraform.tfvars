region_name    = "ap-southeast-1"
aws_acc_number = "227957480161"
tags = {
  "terraform"     = true
  "Environment"   = "test"
  "Organisation"  = "M1"
  "map-migrated"  = "mig49892"
  "System Owner"  = "AsiaPac"
  "Project Owner" = "M1"
  "Department"    = "test"
}
lifecycle_rules = [{
  id     = "TRANSITION-REPORTS-TO-IA-30D"
  days   = "30"
  sclass = "STANDARD_IA"
  prefix = null
  expire = null
  status = "Enabled"
  },
  {
    id     = "TRANSITION-REPORTS-TO-GLACIER-90D-DELETE-7Y"
    days   = "90"
    sclass = "DEEP_ARCHIVE"
    prefix = null
    expire = 2555
    status = "Enabled"
  }
]
master_prefix = "m1"
env_prefix    = "uat"
app_prefix    = "hsenid2"

###### VPC variables #####
/*
hsenid_uat_tgw_id = "tgw-0c50d6a779990bc80"
vpc_tags = {
  "Name"          = "vpc-ajuba-uat"
  "Resource Type" = "VPC"
}
//TGW Dest Prefix to NULL

tgw_subnet_name      = ["tgw-landing-uat-ajb-1"]
tgw_attachment       = true
tgw_dest_prefix_list = "pl-034986af437089da6"

###### hsenid VPC variables ####
hsenid_uat_vpc_cidr       = "10.241.56.0/21"
hsenid_uat_flow_log_s3_bucket_name = "hsenid-uat-vpc-flow-logs"
hsenid_uat_s3_kms_key_alias        = "alias/hsenid-s3-vpc-uat-fl-key"

# # Number prefixes indicate order of subnets in map. Do not change. Change to order lead to replacement of subnet resource
hsenid_uat_vpc_subnet_list = {
  "onm-web-pvt-uat-ajb-az1" = {
    "a" = "10.241.56.0/27"
  },

  "onm-app-pvt-uat-ajb-az1" = {
    "a" = "10.241.56.32/27"
   },

  "onm-db-pvt-uat-ajb-az1" = {
    "a" = "10.241.56.64/27"
  },

  "traf-web-pvt-uat-ajb-az1" = {
    "a" = "10.241.57.0/27"
  },

  "traf-app-pvt-uat-ajb-az1" = {
    "a" = "10.241.57.32/27"
   },

  "traf-db-pvt-uat-ajb-az1" = {
    "a" = "10.241.57.64/27"
  },

  "tgw-landing-uat-ajb-1" = {
    "a" = "10.241.57.192/27"
    "b" = "10.241.57.224/27"
  }

}

#### EC2 ajuba-web-pre-prod #####
ajuba-web-uat_instances = [

  {

    "instance_name" : "hsenid-ajuba-web-uat",
    "zone_name" : "1a",
    "subnet_id" : "subnet-069f0de615928acb1",
    "int_subnet_id" : "subnet-07fe5ed68273d73b5",
    "security_group_id" : "sg-0dd3cf5f3a101c34c"
  }
]

#### EC2 ajuba-app-prod #####
ajuba-app-uat_instances = [

  {
    "instance_name" : "hsenid-ajuba-app-uat",
    "zone_name" : "1a",
    "subnet_id" : "subnet-0e49355d360927fc1",
    "int_subnet_id" : "subnet-026f4aba4ba645e45",
    "security_group_id" : "sg-0ae8187303f944c0b",
  }
]

#### hsenid-ajuba-db-preprod #####
ajuba-db-uat_instances = [

  {
    "instance_name" : "hsenid-ajuba-db-uat",
    "zone_name" : "1a",
    "subnet_id" : "subnet-01c9a28f719af81d7",
    "int_subnet_id" : "subnet-05c438b6a9d5d106c",
    "security_group_id" : "sg-05d028b5404bc2fb8"
  }
]

#### EcC2 Ajuba-dashboard-db-prod #####
ajuba-dashboard-db-uat_instances = [

  {
    "instance_name" : "hsenid-ajuba-dashboard-db-uat",
    "zone_name" : "1a",
    "subnet_id" : "subnet-01c9a28f719af81d7",
    "int_subnet_id" : "subnet-05c438b6a9d5d106c",
    "security_group_id" : "sg-0109bbbc3cbd2debe"
  }
]
*/


