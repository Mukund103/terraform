

provider "aws" {
  region  = "ap-south-1"
}


resource "aws_vpc" "lwvpc" {
  cidr_block = "192.168.0.0/16"
   tags = {
    Name = "lwvpc"
  }
}

resource "aws_subnet" "lwlab1" {
  vpc_id     = aws_vpc.lwvpc.id
  cidr_block = "192.168.0.0/24"
  map_public_ip_on_launch=true
  tags = {
    Name = "lwlab1"
  }
}

resource "aws_subnet" "lwlab2" {
  vpc_id     = aws_vpc.lwvpc.id
  cidr_block = "192.168.1.0/24"

  tags = {
    
    Name = "lwlab2"
  }
}
