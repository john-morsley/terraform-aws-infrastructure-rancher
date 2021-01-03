/*
__      __        _       _     _           
\ \    / /       (_)     | |   | |          
 \ \  / /_ _ _ __ _  __ _| |__ | | ___  ___ 
  \ \/ / _` | '__| |/ _` | '_ \| |/ _ \/ __|
   \  / (_| | |  | | (_| | |_) | |  __/\__ \
    \/ \__,_|_|  |_|\__,_|_.__/|_|\___||___/

                                          */

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

# RKE
variable "node_settings" {
  type = list(
    object({
      role          = list(string)
      instance_type = string
    })
  )
  default = []
}

# EKS
variable "node_group_settings" {
  type = list(
  object({
    name          = string
    minimum_size  = number
    desired_size  = number
    maximum_size  = number
    type          = string
    instance_type = string
  })
  )
}

variable "bucket_prefix" {
  description = "An optional prefix for the bucket."
  type        = string
}

########################################################################################################################
# RANCHER
########################################################################################################################

variable "sub_domain" {
  type = string
}

variable "domain" {
  type = string
}