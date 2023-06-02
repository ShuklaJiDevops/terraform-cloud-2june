
resource "aws_iam_user" "iam_user" {
  name  = "demo-user.${count.index}"
  count = 3
  path  = "/system/"
}

output "name" {
  value = aws_iam_user.iam_user[*].name
}

output "arns" {
    value = aws_iam_user.iam_user[*].arn
}

output "zipmap" {
    value = zipmap (aws_iam_user.iam_user[*].name, aws_iam_user.iam_user[*].arn)
}
