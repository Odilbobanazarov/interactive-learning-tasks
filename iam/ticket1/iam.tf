resource "aws_iam_user" "bob" {
  name = "bob"
  tags = local.task_tags
}

resource "aws_iam_group" "sysusers" {
  name = "sysusers"
  
}


resource "aws_iam_group_membership" "members" {
  name  = "members"
  users = [aws_iam_user.bob.name,]
  group = aws_iam_group.sysusers.name
}
