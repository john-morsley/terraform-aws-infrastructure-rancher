data "aws_route53_zone" "morsley-io" {

  name         = var.domain
  private_zone = false

}

resource "aws_route53_record" "a-record" {

  zone_id = data.aws_route53_zone.morsley-io.zone_id
  name    = var.sub_domain
  type    = "A"

  #ttl     = 300
  #records = [module.rancher-node-1-ec2.public_ip]
  #records = [ aws_lb.this.dns_name ]

  alias {
    evaluate_target_health = false
    name                   = module.rke-cluster.network_load_balancer_url     // WAS: aws_lb .this.dns_name
    zone_id                = module.rke-cluster.network_load_balancer_zone_id // WAS: aws_lb.this.zone_id
  }

}

output "route_53_name_servers" {
  value = data.aws_route53_zone.morsley-io.name_servers
}

/*
ToDo:
We need to check that this is working before we continue.
*/