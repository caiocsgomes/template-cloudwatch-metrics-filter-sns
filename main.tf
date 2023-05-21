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

resource "aws_cloudwatch_metric_alarm" "metric_alarm" {
  alarm_name          = var.alarm_name
  comparison_operator = var.alarm_comparison_operator
  evaluation_periods  = var.evaluation_periods
  metric_name         = aws_cloudwatch_log_metric_filter.metric_filter.name
  namespace           = var.metric_namespace
  period              = var.alarm_period
  statistic           = var.alarm_statistic
  threshold           = var.alarm_threshold
  alarm_description   = var.alarm_description
}
