/*
 _  __     _                          _               _____ _           _            
| |/ /    | |                        | |             / ____| |         | |           
| ' /_   _| |__   ___ _ __ _ __   ___| |_ ___  ___  | |    | |_   _ ___| |_ ___ _ __ 
|  <| | | | '_ \ / _ \ '__| '_ \ / _ \ __/ _ \/ __| | |    | | | | / __| __/ _ \ '__|
| . \ |_| | |_) |  __/ |  | | | |  __/ ||  __/\__ \ | |____| | |_| \__ \ ||  __/ |   
|_|\_\__,_|_.__/ \___|_|  |_| |_|\___|\__\___||___/  \_____|_|\__,_|___/\__\___|_|   
                                                                                      
                                                                                   */

########################################################################################################################
# K3S
########################################################################################################################

//module "cluster" {
//
//  source = "./../terraform-aws-kubernetes-ks3-module"
//  #source = "john-morsley/kubernetes-rke/aws"
//
//  vpc_id                  = module.vpc.id
//  public_subnet_ids       = module.vpc.public_subnet_ids
//  availability_zone_names = data.aws_availability_zones.available.names
//
//  cluster_name = var.cluster_name
//
//  bucket_name = module.s3_bucket.name
//
//  node_settings = var.node_settings
//
//}

# kubectl get po -A

/*
???
*/

# kubectl get deploy -A

/*
???
*/