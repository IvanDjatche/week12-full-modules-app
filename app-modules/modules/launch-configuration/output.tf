output "launch_configuration_id" {
  description = "The ID of the launch configuration"
  value       = aws_launch_configuration.my-lc.id
}
output "launch_configuration_arn" {
  description = "The ID of the launch configuration"
  value       = aws_launch_configuration.my-lc.arn
}
output "autoscaling_id" {
  value = aws_autoscaling_group.aug.id
}