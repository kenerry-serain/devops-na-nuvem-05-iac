resource "aws_route_table" "public" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }

  tags = merge(var.tags, { Name = var.vpc.public_route_table_name })
}

resource "aws_route_table_association" "publics" {
  count          = length(var.vpc.public_subnets)

  subnet_id      = aws_subnet.publics[count.index].id
  route_table_id = aws_route_table.public.id
}
