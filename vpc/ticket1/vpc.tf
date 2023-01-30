resource "aws_vpc" "main" {
cidr_block = "10.0.0.0/16"
  
  
  # Do not change below code
  tags = local.task_tags
}
