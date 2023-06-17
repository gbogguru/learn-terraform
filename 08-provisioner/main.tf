resource "aws_instance" "web" {
  ami                    = data.aws_ami.example.id
  instance_type          = "t3.micro"
  #Allow - All Security group id
  vpc_security_group_ids = ["sg-03e041277bba677bf"]

  tags = {
    Name = "HelloWorld"
  }

  #Different exec types: remote, local, file
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "sudo labauto ansible",
      #"ansible-pull -i localhost, -U https://github.com/raghudevopsb73/roboshop-ansible main.yml -e env=dev -e role_name=frontend"
      "ansible-pull -i localhost, -U https://github.com/gbogguru/roboshop-ansible main.yml -e env=dev -e role_name=frontend"
    ]
  }

}

data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

