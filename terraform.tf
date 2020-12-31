terraform {

  required_version = ">= 0.14"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.22.0"
    }

    local = {
      source  = "hashicorp/local"
      version = ">= 2.0.0"
    }

    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.0"
    }

    rke = {
      source  = "rancher/rke"
      version = ">= 1.1.6"
    }

    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.0.0"
    }
  }

}