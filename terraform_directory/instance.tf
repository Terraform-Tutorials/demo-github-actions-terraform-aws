<<<<<<< HEAD
provider "aws" {
  region = "sa-east-1"
  shared_credentials_file = "/home/amaurybsouza/.aws/credentials"
  profile = "sre"
}

resource "aws_instance" "machine01" {
  count = 1
  #ami = "ami-09e67e426f25ce0d7"
  ami = "ami-054a31f1b3bf90920"
  instance_type = "t2.micro"
  key_name = "docker01"
  security_groups = ["${aws_security_group.allow_ssh.name}"]
  associate_public_ip_address = true
}
=======
provider "aws" {
  region = "sa-east-1"
  #shared_credentials_file = "/home/amaurybsouza/.aws/credentials"
  profile = "sre"
}

resource "aws_instance" "machine01" {
  count = 1
  #ami = "ami-09e67e426f25ce0d7"
  ami = "ami-054a31f1b3bf90920"
  instance_type = "t2.micro"
  key_name = "docker01"
  security_groups = ["${aws_security_group.allow_ssh.name}"]
  associate_public_ip_address = true
}
>>>>>>> 4940720572281b98b003bf01b0bf4e8b9e4ae2c1
