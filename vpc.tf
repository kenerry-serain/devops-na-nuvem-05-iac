resource "aws_vpc" "this" {
  cidr_block = var.vpc.cidr_block
  tags = merge(var.tags, { Name = var.vpc.name })
}
