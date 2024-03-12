output "vpc_id" {
  description = "subnet id"
  value       = aws_vpc.terrafrom_vpc.id
}
output "subnet_id" {
  description = "subnet_id"
  value       = aws_subnet.terrafrom_subnet.*.id


}