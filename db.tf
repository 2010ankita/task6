provider "aws" {
  region = "ap-south-1"
  profile = "ankita"
}

resource "aws_db_instance" "mydb" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.30"
  identifier           = "oshin-database"
  instance_class       = "db.t2.micro"
  name                 = "oshin8858"
  username             = "admin"
  password             = "abc*123#"
  port                 = "3306"
  parameter_group_name = "default.mysql5.7"
  iam_database_authentication_enabled = true
  publicly_accessible = true
  skip_final_snapshot = true
}