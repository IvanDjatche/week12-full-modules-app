output "vpc_module_id" {
  value = module.vpc.vpc-id
}
output "vpc_module_arn" {
  value = module.vpc.vpc-arn
}

output "alb_dns" {
  value = module.alb.alb_dns_name
}
output "alb_dns" {
  value = module.alb.arn
}

output "sns-arn" {
  value = module.sns.sns-arn
}
output "sns-id" {
  value = module.sns.sns-id
}

output "target_group_arn" {
  value = module.target-group.target_group_arn
}

output "security_group_id" {
  value = module.security_group.security_group-id
}
output "security_group_vpc" {
  value = module.security_group.security_group-vpc
}

output "iam-user" {
  value = module.iam-user.user-id
}
output "iam-group" {
  value = module.iam-group.group-id
}

output "alb_dns" {
  value = module.alb.alb_dns_name
}

output "launch_autoscal_id" {
  value = module.launch-configuration.autoscaling_id
}
output "launch_arn" {
  value = module.launch-configuration.launch_configuration_arn
}
output "launch_id" {
  value = module.launch-configuration.launch_configuration_id
}