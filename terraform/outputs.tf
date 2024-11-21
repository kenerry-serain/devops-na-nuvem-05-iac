output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnets_arn" {
  value = aws_subnet.publics[*].arn
}

output "private_subnets_arn" {
  value = aws_subnet.privates[*].arn
}