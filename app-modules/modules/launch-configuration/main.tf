
resource "aws_launch_configuration" "my-lc" {
  name          = var.launch_configuration_name
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = var.security_group_ids

  lifecycle {
    create_before_destroy = true
  }
}
