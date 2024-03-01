variable "aws-region" {
  description = "The AWS region"
  default     = ""
}

variable "access_key" {
  description = "value"
  default     = ""
}

variable "secret_key" {
  description = "value"
  default     = ""
}

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS DB subnet group"
  type        = list(string)
  default     = ["subnet-xxxxxxxxx", "subnet-xxxxxxxxx", "subnet-xxxxxxxxx"]
}

variable "db_instance_username" {
  description = "Username for the RDS instance"
  type        = string
  default     = ""
}

variable "db_instance_password" {
  description = "Password for the RDS instance"
  type        = string
  default     = ""
}

variable "allocated_storage" {
  description = "Allocated storage for the RDS instance (in GB)"
  type        = number
  default     = 120
}

variable "multi_az" {
  description = "Enable Multi-AZ deployment"
  type        = bool
  default     = false
}

variable "backup_retention_period" {
  description = "Number of days to retain backups"
  type        = number
  default     = 7
}

variable "skip_final_snapshot" {
  description = "Skip final DB snapshot when deleting the instance"
  type        = bool
  default     = true
}

variable "instance_type" {
  description = "value"
  default     = "db.t4g.small"
}

variable "app_name" {
  description = "value"
  default     = "mysql-db"
}

variable "db_engine" {
  description = "Database engine (e.g., mysql)"
  type        = string
  default     = "mysql"
}

variable "db_engine_version" {
  description = "Database engine version (e.g., 8.0)"
  type        = string
  default     = "8.0"
}

variable "security_group_ids" {
  description = "List of security group IDs for the RDS instance"
  type        = list(string)
  default     = ["sg-xxxxxxxxxxxxxx"]
}


