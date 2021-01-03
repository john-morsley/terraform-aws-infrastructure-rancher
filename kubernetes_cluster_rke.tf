/*
 _  __     _                          _               _____ _           _            
| |/ /    | |                        | |             / ____| |         | |           
| ' /_   _| |__   ___ _ __ _ __   ___| |_ ___  ___  | |    | |_   _ ___| |_ ___ _ __ 
|  <| | | | '_ \ / _ \ '__| '_ \ / _ \ __/ _ \/ __| | |    | | | | / __| __/ _ \ '__|
| . \ |_| | |_) |  __/ |  | | | |  __/ ||  __/\__ \ | |____| | |_| \__ \ ||  __/ |   
|_|\_\__,_|_.__/ \___|_|  |_| |_|\___|\__\___||___/  \_____|_|\__,_|___/\__\___|_|   
                                                                                      
                                                                                   */

########################################################################################################################
# RKE - RANCHER KUBERNETES ENGINE
########################################################################################################################

//module "cluster" {
//
//  source = "./../terraform-aws-kubernetes-rke-module"
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
NAMESPACE       NAME                                       READY   STATUS      RESTARTS   AGE
ingress-nginx   default-http-backend-65dd5949d9-mgjrl      1/1     Running     0          86s
ingress-nginx   nginx-ingress-controller-gxkj7             1/1     Running     0          86s
ingress-nginx   nginx-ingress-controller-hrxtg             1/1     Running     0          86s
ingress-nginx   nginx-ingress-controller-qnzqm             1/1     Running     0          86s
kube-system     calico-kube-controllers-649b7b795b-rfj89   1/1     Running     0          113s
kube-system     canal-cqrn2                                2/2     Running     0          114s
kube-system     canal-lsqpd                                2/2     Running     0          114s
kube-system     canal-vflvw                                2/2     Running     0          114s
kube-system     coredns-6f85d5fb88-ljnlj                   1/1     Running     0          89s
kube-system     coredns-6f85d5fb88-nphgq                   1/1     Running     0          104s
kube-system     coredns-autoscaler-79599b9dc6-xjptx        1/1     Running     0          102s
kube-system     metrics-server-8449844bf-2bbpd             1/1     Running     0          93s
kube-system     rke-coredns-addon-deploy-job-4rzfv         0/1     Completed   0          109s
kube-system     rke-ingress-controller-deploy-job-d5h4x    0/1     Completed   0          88s
kube-system     rke-metrics-addon-deploy-job-7h44f         0/1     Completed   0          98s
kube-system     rke-network-plugin-deploy-job-stslb        0/1     Completed   0          119s
*/

# kubectl get deploy -A

/*
NAMESPACE       NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
ingress-nginx   default-http-backend      1/1     1            1           6m13s
kube-system     calico-kube-controllers   1/1     1            1           6m42s
kube-system     coredns                   2/2     2            2           6m32s
kube-system     coredns-autoscaler        1/1     1            1           6m30s
kube-system     metrics-server            1/1     1            1           6m22s
*/