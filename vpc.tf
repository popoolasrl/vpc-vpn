# Define our VPC
resource "aws_vpc" "shared" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  
}
# Define the public subnet
resource "aws_subnet" "sub_pub_1a" {
  vpc_id = "${aws_vpc.shared.id}"
  cidr_block = "${var.sub_public_1a}"
  availability_zone = "ap-south-1a"

  
}

# Define the public subnet
resource "aws_subnet" "sub_pub_1b" {
  vpc_id = "${aws_vpc.shared.id}"
  cidr_block = "${var.sub_public_1b}"
  availability_zone = "ap-south-1b"

 
}

# Define the private subnet
resource "aws_subnet" "sub_pri_1a" {
  vpc_id = "${aws_vpc.shared.id}"
  cidr_block = "${var.sub_private_1a}"
  availability_zone = "ap-south-1a"

  
}

# Define the private subnet
resource "aws_subnet" "sub_pri_1b" {
  vpc_id = "${aws_vpc.shared.id}"
  cidr_block = "${var.sub_private_1b}"
  availability_zone = "ap-south-1b"

  
}

# Server 1
resource "aws_subnet" "sb_sshArch_1a" {
  vpc_id = "${aws_vpc.shared.id}"
  cidr_block = "${var.sb_sshArch_1a}"
  availability_zone = "ap-south-1a"

  
}
resource "aws_subnet" "sb_sshArch_1b" {
  vpc_id = "${aws_vpc.shared.id}"
  cidr_block = "${var.sb_sshArch_1b}"
  availability_zone = "ap-south-1b"

  
}

# Server 1
resource "aws_subnet" "sb_iopted_1a" {
  vpc_id = "${aws_vpc.shared.id}"
  cidr_block = "${var.sb_iopted_1a}"
  availability_zone = "ap-south-1a"

  
}
resource "aws_subnet" "sb_iopted_1b" {
  vpc_id = "${aws_vpc.shared.id}"
  cidr_block = "${var.sb_iopted_1b}"
  availability_zone = "ap-south-1b"

  
}

# Database
resource "aws_subnet" "sb_rds_1a" {
  vpc_id = "${aws_vpc.shared.id}"
  cidr_block = "${var.sb_rds_1a}"
  availability_zone = "ap-south-1a"

  
}
resource "aws_subnet" "sb_rds_1b" {
  vpc_id = "${aws_vpc.shared.id}"
  cidr_block = "${var.sb_rds_1b}"
  availability_zone = "ap-south-1b"

}