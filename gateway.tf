# Define the internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.shared.id}"
  
}

#Assign Elastic IP
resource "aws_eip" "nat" {
  vpc      = true
  tags = {
    Name = "eip_nat"
  }
}


#Define NAT Gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.sub_pub_1a.id}"
  
}