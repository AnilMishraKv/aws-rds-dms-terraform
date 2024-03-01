#Creating a source endpoint for DMS
resource "aws_dms_endpoint" "source" {
  endpoint_id   = "source"
  endpoint_type = "source"
  engine_name   = "mysql"
  password      = var.source_db_password
  port          = 3306
  server_name   = var.source_server_name
  ssl_mode      = "none"
  username      = "dms"
}

#Creating a target endpoint for DMS
resource "aws_dms_endpoint" "target" {
  endpoint_id   = "target"
  endpoint_type = "target"
  engine_name   = "mysql"
  password      = var.db_instance_password
  port          = 3306
  server_name   = var.target_server_name
  ssl_mode      = "none"
  username      = var.db_instance_username
}


# Create a new replication instance which migrates data between source & target endpoints
resource "aws_dms_replication_instance" "dms-instance" {
  allocated_storage          = 1000
  apply_immediately          = true
  auto_minor_version_upgrade = false
  multi_az                   = false
  publicly_accessible        = true
  replication_instance_class = "dms.r5.large"
  replication_instance_id    = "dms-instance"

  tags = {
    Name = "DMS-Replication-Instance"
  }

  vpc_security_group_ids = var.security_group_ids
  depends_on             = [aws_iam_role.dms-vpc-role]
}
