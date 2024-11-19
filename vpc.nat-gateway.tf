resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id     = aws_subnet.publics[0].id
  
  tags = merge(var.tags, { Name = var.vpc.nat_gateway_name })

  depends_on = [aws_internet_gateway.this]
}