terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


resource "aws_cloudwatch_log_metric_filter" "metric_filter" {
  name           = var.metric_filter_name != "" ? var.metric_filter_name : var.alarm_name
  pattern        = var.filter_pattern
  log_group_name = var.log_group_name

  metric_transformation {
    name      = var.metric_filter_name != "" ? var.metric_filter_name : var.alarm_name
    namespace = var.metric_namespace
    value     = var.metric_value
  }
}
