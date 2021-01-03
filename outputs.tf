/*
  ____        _               _       
 / __ \      | |             | |      
| |  | |_   _| |_ _ __  _   _| |_ ___ 
| |  | | | | | __| '_ \| | | | __/ __|
| |__| | |_| | |_| |_) | |_| | |_\__ \
 \____/ \__,_|\__| .__/ \__,_|\__|___/
                 | |                  
                 |_|                */

########################################################################################################################
# CLUSTER
########################################################################################################################

output "cluster_network_load_balancer_url" {
  value = module.cluster.load_balancer_url
}

//output "cluster_kubeconfig_yaml" {
//  value = module.cluster.kubeconfig_yaml
//}

output "cluster_export_kubeconfig_command" {
  value = module.cluster.export_kubeconfig_command
}

output "cluster_bucket_name" {
  value = module.s3_bucket.name
}

output "cluster_id" {
  value = module.cluster.cluster_id
}

output "route_53_name_servers" {
  value = data.aws_route53_zone.morsley-io.name_servers
}