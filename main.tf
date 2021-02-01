# Configure a VPC
resource "aws_vpc" "vpc" {
  count = var.create_vpc ? 1 : 0

  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy

  tags = var.tags
}

# Configure a private subnet
resource "aws_subnet" "private_subnet" {
  # If var.create_vpc & the length of var.private_subnets is greater than 0, then use the values from var.private_subnets, otherwise the count is 0 and a VPC is not created
  count = var.create_vpc && length(var.private_subnets) > 0 ? length(var.private_subnets) : 0

  availability_zone = var.azs[count.index]
  vpc_id            = aws_vpc.main_vpc[0].id
  cidr_block        = var.web_server_subnets[count.index]

  tags = var.tags
}

# Configure NACL
# Configure Route tables
# Configure IGW
# Configure NGW