
resource "aws_iam_user" "lb" {
  name  = "demo-user.${count.index}"
  count = 3
  path  = "/system/"
}

output "name" {
  value = aws_iam_user.lb[*].name
}

output "arns" {
    value = aws_iam_user.lb[*].arn
}

output "zipmap" {
    value = zipmap (aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}