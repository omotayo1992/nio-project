resource "aws_s3_bucket" "b" {
  count = var.create_ec2 ? 1 : 0
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}