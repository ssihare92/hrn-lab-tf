variable "aws_region" {
  type = string
}

variable "log_group_name" {
  type = string
}

variable "retention_days" {
  type    = number
  default = 1
}

variable "kms_key_arn" {
  type    = string
  default = ""
}

variable "app" {
  type    = string
  default = "demo"
}

variable "service" {
  type    = string
  default = "ecs-demo"
}

variable "env" {
  type    = string
  default = "dev"
}
