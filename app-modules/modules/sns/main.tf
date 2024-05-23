resource "aws_sns_topic" "sns-demo" {
  name = var.sns_name
  display_name = var.sns_topic_display_name
}