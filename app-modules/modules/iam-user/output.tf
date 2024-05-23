output "user-id" {
  value = aws_iam_user.my-user.unique_id
}
output "user-name" {
  value = aws_iam_user.my-user.name
}
output "user-arn" {
  value = aws_iam_user.my-user.arn
}