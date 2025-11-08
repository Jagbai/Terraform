output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = aws_subnet.private[*].id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "public_route_table_ids" {
  description = "List of public route table IDs"
  value       = [for rt in aws_route_table.public : rt.id]
}

output "private_route_table_ids" {
  description = "List of private route table IDs"
  value       = [for rt in aws_route_table.private : rt.id]
}

output "security_group_id" {
  description = "The ID of the default security group"
  value       = aws_security_group.default.id
}
