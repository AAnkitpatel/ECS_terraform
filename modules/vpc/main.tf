provider "aws" {
  profile = "ankit"
  region  = "ap-south-1"
}

#create vpc
resource "aws_vpc" "terrafrom_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}
#create subnets
resource "aws_subnet" "terrafrom_subnet" {
  vpc_id            = aws_vpc.terrafrom_vpc.id
  cidr_block        = var.subnet_cidr_blocks[count.index]
  count             = length(var.subnet_cidr_blocks)
  availability_zone = var.subnet_az[count.index]
  tags = {
    Name = var.subnet_name[count.index]
  }
}

#internetGateway
resource "aws_internet_gateway" "terrafrom_igw" {
  vpc_id = aws_vpc.terrafrom_vpc.id
  tags = {
    Name = var.igw_name
  }

}
#Routing tables

resource "aws_route_table" "terrafrom_route" {
  vpc_id = aws_vpc.terrafrom_vpc.id
  route {
    cidr_block = var.route_block_cidr
    gateway_id = aws_internet_gateway.terrafrom_igw.id
  }
  tags = {
    Name = var.route_name
  }
}

## Associate Route Table with Subnet
resource "aws_route_table_association" "terraform_route_acc" {
  count          = 2
  route_table_id = aws_route_table.terrafrom_route.id
  subnet_id      = aws_subnet.terrafrom_subnet[count.index].id
}