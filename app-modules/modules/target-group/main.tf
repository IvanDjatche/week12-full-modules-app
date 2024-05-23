
resource "aws_lb_target_group" "example" {
  name        = var.target_group_name
  port        = var.port
  protocol    = var.protocol
  target_type = var.target_type_ip
  vpc_id      = var.vpc_id

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

