variable "log_group_name" {
  description = "The name of the log group to associate the metric filter with."
}
variable "metric_filter_name" {
  description = "A name for the metric filter."
  default     = ""
}
variable "metric_namespace" {
  description = "The destination namespace of the CloudWatch metric."
}
variable "metric_value" {
  description = "The value to publish to the CloudWatch metric when a filter pattern matches a log event."
  default     = "1"
}
variable "filter_pattern" {
  description = "The pattern to search for in the logs. For example, \"Error\"."
  default     = "Error"
}

variable "alarm_name" {
  description = "The name for the alarm that is associated with the metric."
}

variable "alarm_threshold" {
  description = "The value against which the specified statistic is compared."
  default     = "1"
}

variable "alarm_period" {
  description = "The period in seconds over which the specified statistic is applied."
  default     = "60"
}

variable "evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold."
  default     = "1"
}

variable "alarm_statistic" {
  description = "The statistic to apply to the alarm's associated metric."
  default     = "Sum"
}

variable "alarm_comparison_operator" {
  description = "The arithmetic operation to use when comparing the specified statistic and threshold."
  default     = "GreaterThanOrEqualToThreshold"
}

variable "alarm_description" {
  description = "The description for the alarm."
  default     = "This metric monitors ec2 cpu utilization"
}

variable "create_sns" {
  description = "Whether to create an SNS topic for the alarm."
  default     = "false"
}
