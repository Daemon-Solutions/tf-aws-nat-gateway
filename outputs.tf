## nat gateway Outputs

output "nat_gateway_id" {
  value = "${element(concat(aws_nat_gateway.natgw.*.id, list("")), 0)}"
}
