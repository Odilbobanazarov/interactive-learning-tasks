resource "aws_s3_bucket" "ticket1" {
 bucket_prefix = "aws-s3-devops-task-Odil"
 acl = "private"
 }
 resource "aws_s3_bucket_versioning" "ticket1" {
   bucket = aws_s3_bucket.ticket1.id
   versioning_configuration {
     status = "Enabled"
   }
 # Please do not change below code
 tags = local.task_tags
}

