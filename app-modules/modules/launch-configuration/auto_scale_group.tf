# autoscaling.tf

resource "aws_autoscaling_group" "aug" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  vpc_zone_identifier  = var.subnet_ids
  launch_configuration = aws_launch_configuration.my-lc.id

  tag {
    key                 = var.key
    value               = var.autoscaling-group
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
