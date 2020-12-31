#    ____        _               _       
#   / __ \      | |             | |      
#  | |  | |_   _| |_ _ __  _   _| |_ ___ 
#  | |  | | | | | __| '_ \| | | | __/ __|
#  | |__| | |_| | |_| |_) | |_| | |_\__ \
#   \____/ \__,_|\__| .__/ \__,_|\__|___/
#                   | |                  
#                   |_|                  

########################################################################################################################
# CLUSTER
########################################################################################################################

output "cluster_network_load_balancer_url" {
  value = module.rke-cluster.network-load_balancer_url
}

output "cluster_kubeconfig_yaml" {
  value = module.rke-cluster.kubeconfig_yaml
}

output "cluster_export_kubeconfig_command" {
  value = module.rke-cluster.export_kubeconfig_command
}


