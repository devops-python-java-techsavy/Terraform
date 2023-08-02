resource "aws_lb" "my_load_balancer" {
  name               = "my-lb"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["subnet-12345678", "subnet-87654321"]  # Replace with your subnet IDs

  enable_deletion_protection = false
}

