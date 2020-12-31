locals {

  //route_53_domain = length(var.route_53_domain) > 0 ? var.route_53_domain : var.domain

  bucket_name = "${var.cluster_name}-${random_pet.this.id}"

}