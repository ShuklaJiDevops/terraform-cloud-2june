
resource "aws_iam_user" "user" {
  name  = "demo-user.${count.index}"
  count = 3
  path  = "/system/"
}

output "name" {
  value = aws_iam_user.user[*].name
}

output "arns" {
    value = aws_iam_user.user[*].arn
}

output "zipmap" {
    value = zipmap (aws_iam_user.user[*].name, aws_iam_user.user[*].arn)
}
