resource "aws_db_instance" "default" {
  allocated_storage          = 50
  max_allocated_storage      = 100
  db_name                    = "mydb"
  engine                     = "mysql"
  engine_version             = "5.7"
  instance_class             = "db.t3.micro"
  username                   = "foo"
  password                   = "foobarbaz"
  parameter_group_name       = "default.mysql5.7"
  skip_final_snapshot        = true
  auto_minor_version_upgrade = true



  # Please do not change below code
  tags = local.task_tags
}
