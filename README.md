tf-aws-nat-gateway
-----

This module is for creating a nat gateway per AZ.

Usage
-----

```js

module "natgw" {
    source = "git::ssh://git@gogs.bashton.net/Bashton-Terraform-Modules/tf-aws-nat-gateway.git"

    private_subnets         = ["10.0.101.0/24","10.0.102.0/24","10.0.103.0/24"]
    public_subnet_ids       = ["subnet-id,subnet-id"]
    private_route_table_ids = ["route_table_id,route_table_id"]
}
```

Variables
---------
_Variables marked with **[*]** are mandatory._

* `private_subnets` - List of the private subnet CIDR blocks that require a NAT gateway. **[*]**

* `public_subnet_ids` - List of the public subnet IDs that require a NAT gateway. **[*]**

* `private_route_table_ids` - List of the private route tables that need updating. **[*]**


Outputs
-------
* `nat_gateway_id` - ID of the NAT gateway.