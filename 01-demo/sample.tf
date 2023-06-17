resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
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
