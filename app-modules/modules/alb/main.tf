resource "aws_lb" "example" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = var.subnet_ids

  tags = {
    Name = var.alb_name
  }
}

resource "aws_lb_target_group" "example" {
  name     = var.target_group_name
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id

  health_check {
    path                = var.health_check_path
    interval            = 30
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
    matcher             = "200-299"
  }

  tags = {
    Name = var.target_group_name
  }
}

resource "aws_lb_listener" "example" {
  load_balancer_arn = aws_lb.example.arn
  port              = var.port
  protocol          = var.protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.example.arn
  }
}

output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.example.dns_name
}
