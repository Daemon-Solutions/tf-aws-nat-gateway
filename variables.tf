/* NAT Gateway variables */
variable "private_subnets" {
  description = "List of private subnets to create NAT gateways for"
  type = "list"
}

variable "public_subnet_ids" {
  description = "List of public subnets to create NAT gateways for"
  type = "list"
}

variable "private_route_table_ids" {
  description = "List of private routing table IDs for tables that need updating"
  type = "list"
}
