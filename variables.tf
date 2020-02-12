/* NAT Gateway variables */
variable "private_subnets" {
  description = "List of private subnets to create NAT gateways for"
  type = list(string)
}

variable "public_subnet_ids" {
  description = "List of public subnets to create NAT gateways for"
  type = list(string)
}

variable "private_route_table_ids" {
  description = "List of private routing table IDs for tables that need updating"
  type = list(string)
}
