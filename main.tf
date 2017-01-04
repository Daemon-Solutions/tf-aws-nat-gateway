# nat gateway resources

resource "aws_route" "private_nat_gateway" {

  route_table_id            = "${element(var.private_route_table_ids, count.index)}"
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id            = "${element(aws_nat_gateway.natgw.*.id, count.index)}"
  count                     = "${length(var.private_subnets)}"
}

resource "aws_eip" "nateip" {

  vpc                       = true
  count                     = "${length(var.private_subnets)}"
}

resource "aws_nat_gateway" "natgw" {

  allocation_id             = "${element(aws_eip.nateip.*.id, count.index)}"
  subnet_id                 = "${element(var.public_subnet_ids, count.index)}"
  count                     = "${length(var.private_subnets)}"
  }
