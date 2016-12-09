## tf-aws-nat-gateway

-----

This module is for creating a nat gateway per AZ

-----

### Usage

-----

Declare a module in your Terraform file, for example:


    module "natgw" {
        source = "git::ssh://git@gogs.bashton.net/Bashton-Terraform-Modules/tf-aws-nat-gateway.git"

        private_subnets         = ["10.0.101.0/24","10.0.102.0/24","10.0.103.0/24"]
        public_subnet_ids       = ["subnet-id,subnet-id"]
        private_route_table_ids = ["route_table_id,route_table_id"]
        }


### Required Variables

* private_subnets - counts the number of private subnets.

* public_subnet_ids - ids of the public subnet ids that require a nat gateway.

* private_route_table_ids - ids of the private route tables that need updating.


### Outputs

* nat_gateway_id - id of the nat gateway.