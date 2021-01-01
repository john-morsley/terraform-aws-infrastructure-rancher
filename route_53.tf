/*
 _____             _         _____ ____  
|  __ \           | |       | ____|___ \ 
| |__) |___  _   _| |_ ___  | |__   __) |
|  _  // _ \| | | | __/ _ \ |___ \ |__ < 
| | \ \ (_) | |_| | ||  __/  ___) |___) |
|_|  \_\___/ \__,_|\__\___| |____/|____/ 
                                         
                                        */

data "aws_route53_zone" "morsley-io" {

  name         = var.domain
  private_zone = false

}

resource "aws_route53_record" "a-record" {

  zone_id = data.aws_route53_zone.morsley-io.zone_id
  name    = var.sub_domain
  type    = "A"

  alias {
    evaluate_target_health = false
    name                   = module.rke-cluster.network_load_balancer_url
    zone_id                = module.rke-cluster.network_load_balancer_zone_id
  }

}

output "route_53_name_servers" {
  value = data.aws_route53_zone.morsley-io.name_servers
}

/*
ToDo:
We need to check that this is working before we continue.
*/