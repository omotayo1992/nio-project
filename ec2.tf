resource "aws_instance" "production" {
  count = var.create_ec2 ? 1 : 0
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t3.micro"

  tags = {
    Name = "Production"
  }
}

resource "aws_instance" "general" {
  provider =  aws.west-region
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t3.micro"

  tags = {
    Name = "General"
  }
}