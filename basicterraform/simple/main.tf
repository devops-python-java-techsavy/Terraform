

provider "aws" {
  region = "us-west-1"  # Change to your desired region
}

resource "aws_instance" "example_instance" {
  ami           = "ami-12345678"  # Replace with your desired AMI ID
  instance_type = "t2.micro"      # Replace with your desired instance type
  key_name      = "your-key-pair" # Replace with your key pair name

  tags = {
    Name = "ExampleInstance"
  }
}
