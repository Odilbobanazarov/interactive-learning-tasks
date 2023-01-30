resource "aws_subnet" "private1" {
vpc_id           = aws_vpc.main.id
cidr_block       = "10.0.4.0/24"
availability_zone = "eu-west-1a"







  # Please do not change below code
  tags = local.task_tags
}


resource "aws_subnet" "private2" {
vpc_id           = aws_vpc.main.id
cidr_block       = "10.0.5.0/24"
availability_zone = "eu-west-1b"





  # Please do not change below code
  tags = local.task_tags
}



resource "aws_subnet" "private3" {
vpc_id           = aws_vpc.main.id
cidr_block       = "10.0.6.0/24"
availability_zone = "eu-west-1c"





  # Please do not change below code
  tags = local.task_tags
}
