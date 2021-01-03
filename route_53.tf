/*
 _____             _         _____ ____  
|  __ \           | |       | ____|___ \ 
| |__) |___  _   _| |_ ___  | |__   __) |
|  _  // _ \| | | | __/ _ \ |___ \ |__ < 
| | \ \ (_) | |_| | ||  __/  ___) |___) |
|_|  \_\___/ \__,_|\__\___| |____/|____/ 
                                         
                                        */

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone

data "aws_route53_zone" "morsley-io" {

  name         = var.domain
  private_zone = false

}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record

resource "aws_route53_record" "a-record" {

  zone_id = data.aws_route53_zone.morsley-io.zone_id
  name    = var.sub_domain
  type    = "A"

  alias {
    evaluate_target_health = false
    name                   = module.cluster.load_balancer_url
    zone_id                = module.cluster.load_balancer_zone_id
  }

}

/*
ToDo:
We need to check that this is working before we continue.
*/