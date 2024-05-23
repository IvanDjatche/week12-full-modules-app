# resource "aws_sns_topic" "sns-demo" {
#   name = "Terraform-Learning"
# }

resource "aws_iam_group" "demo" {
  name = "security"
}