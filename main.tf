provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "ec2" {
    ami = "ami-0ddc798b3f1a5117e"
    instance_type = "t2.micro"
}

resource "aws_eip" "elasticeip" {
    instance = aws_instance.ec2.id
  
}

output "EIP" {
    value = aws_eip.elasticeip.public_ip
}