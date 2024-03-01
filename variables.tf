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

variable "security_group_ids" {
  description = "List of security group IDs for the RDS instance"
  type        = list(string)
  default     = ["sg-xxxxxxxxxxxxxx"]
}

variable "source_server_name" {
  description = "Public IP DNS of source db"
  default     = ""
}

variable "source_db_password" {
  description = "password of source db"
  default     = ""
}

variable "target_server_name" {
  description = "Public IP DNS of target db"
  default     = ""
}


