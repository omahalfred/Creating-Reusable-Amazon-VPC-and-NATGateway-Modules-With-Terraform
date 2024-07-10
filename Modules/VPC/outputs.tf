# Export the Region
output "region" {
    value = var.region  
}

# Export the Region
output "project_name" {
    value = var.project_name 
}

# Export the VPC_ID
output "vpc_id" {
    value = aws_vpc.vpc.id 
}

# Export Internet Gateway 
output "internet_gateway" {
    value = aws_internet_gateway.internet_gateway  
}

# Export Public Subnet AZ1 ID
output "public_subnet_az1_id" {
    value = aws_subnet.public_subnet_az1.id 
}

# Export Public Subnet AZ2 ID
output "public_subnet_az2_id" {
    value = aws_subnet.public_subnet_az2.id 
}

# Export Private Subnet AZ1 ID
output "private_subnet_az1_id" {
    value = aws_subnet.private_subnet_az1.id 
}

# Export Private Subnet AZ2 ID
output "private_subnet_az2_id" {
    value = aws_subnet.private_subnet_az2.id 
}