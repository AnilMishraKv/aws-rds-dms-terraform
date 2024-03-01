provider "aws" {
  region     = var.aws-region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_db_subnet_group" "my_db_subnet_group" {
  description = "Created from the RDS Management Console"
  name        = "${var.app_name}-subnet-group"
  subnet_ids  = var.subnet_ids
}

resource "aws_db_instance" "mysql_rds" {
  allocated_storage = var.allocated_storage
  storage_type      = "gp3"
  engine            = var.db_engine
  engine_version    = var.db_engine_version
  instance_class    = var.instance_type

  identifier           = "${var.app_name}-rds"
  username             = var.db_instance_username
  password             = var.db_instance_password
  parameter_group_name = "default.mysql8.0"

  multi_az                = var.multi_az
  db_subnet_group_name    = aws_db_subnet_group.my_db_subnet_group.id
  backup_retention_period = var.backup_retention_period
  skip_final_snapshot     = var.skip_final_snapshot
  publicly_accessible     = true

  vpc_security_group_ids = var.security_group_ids # Associate the security groups

  tags = {
    Name = "${var.app_name}-rds"
  }
}

output "db_endpoint" {
  value = aws_db_instance.mysql_rds.endpoint
}
