locals {

  //route_53_domain = length(var.route_53_domain) > 0 ? var.route_53_domain : var.domain

  bucket_name = "${var.bucket_prefix}-${var.cluster_name}-cluster"

}