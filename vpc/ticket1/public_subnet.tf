resource "aws_subnet" "public1" {
vpc_id                 = aws_vpc.main.id
cidr_block             = "10.0.1.0/24"
availability_zone      = "eu-west-1a"
map_public_ip_on_launch = true







  # Please do not change below code
  tags = local.task_tags
}

resource "aws_subnet" "public2" {
vpc_id                 = aws_vpc.main.id
cidr_block             = "10.0.2.0/24"
availability_zone      = "eu-west-1b"
map_public_ip_on_launch = true





  # Please do not change below code
  tags = local.task_tags
}



resource "aws_subnet" "public3" {
vpc_id                 = aws_vpc.main.id
cidr_block             = "10.0.3.0/24"
availability_zone      = "eu-west-1c"
map_public_ip_on_launch = true




  # Please do not change below code
  tags = local.task_tags
}
