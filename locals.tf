/*
 _                     _
| |                   | |
| |     ___   ___ __ _| |___
| |    / _ \ / __/ _` | / __|
| |___| (_) | (_| (_| | \__ \
|______\___/ \___\__,_|_|___/

                           */

locals {

  bucket_name = "${var.bucket_prefix}-${var.cluster_name}-cluster"

}