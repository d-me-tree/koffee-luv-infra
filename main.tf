provider "aws" {
    region = "eu-west-1"
    version = "~> 3.10.0"
}

data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    owners = ["099720109477"] # Canonical
}

resource "aws_instance" "hellowrold" {
    ami = "ami-028188d9b49b32a80"
    instance_type = "t2.micro"
    tags = {
        Name = "HelloWorld"
    }
}
