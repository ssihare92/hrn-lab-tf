terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_cloudwatch_log_group" "app" {
  name              = var.log_group_name
  retention_in_days = var.retention_days
  kms_key_id        = var.kms_key_arn == "" ? null : var.kms_key_arn
  tags = {
    app     = var.app
    service = var.service
    env     = var.env
  }
}
