#this is considered a child module because the root is referring to this




resource "aws_vpc" "demo" {
  cidr_block = var.vpc_cidr
  tags = var.vpc_tags
  }



resource "aws_subnet" "public" {
    vpc_id = aws_vpc.demo.id
  cidr_block = var.public_subnet_cidr
  tags = var.public_subnet_tags
  }

output "vpc_id" {
  value = aws_vpc.demo.id
}

output "subnet_id" {
  value = aws_subnet.public.id
  
}


