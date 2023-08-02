resource "aws_instance" "my_instance" {
  ami           = "ami-12345678"  # Replace with the desired AMI ID
  instance_type = var.instance_type

  tags = {
    Name = "MyInstance"
  }
}

