#     __      __        _       _     _           
#     \ \    / /       (_)     | |   | |          
#      \ \  / /_ _ _ __ _  __ _| |__ | | ___  ___ 
#       \ \/ / _` | '__| |/ _` | '_ \| |/ _ \/ __|
#        \  / (_| | |  | | (_| | |_) | |  __/\__ \
#         \/ \__,_|_|  |_|\__,_|_.__/|_|\___||___/

########################################################################################################################
# VPC
########################################################################################################################

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

########################################################################################################################
# CLUSTER
########################################################################################################################

variable "cluster_name" {
  type = string
}

variable "node_settings" {
  type = list(
    object({
      role          = list(string)
      instance_type = string
    })
  )
  default = []
}

variable "bucket_prefix" {
  description = "An optional prefix for the bucket."
  type        = string
}

########################################################################################################################
# RANCHER
########################################################################################################################

variable "name" {
  type        = string
  default     = "rancher"
  description = "Name for deployment."
}

variable "sub_domain" {
  type    = string
  default = "rancher"
}

variable "domain" {
  type    = string
  default = "morsley.io"
}