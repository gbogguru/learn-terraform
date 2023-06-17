resource "aws_instance" "web" {
#resource "aws_instance" "test11" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Test - Terraform"
  }
}
//The above AMI ID from DevOps-Practice in AWS
/*
Manual - Instance Creation
Name
Image Type
Server Type
Key Pair
Firewall
/*
