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
}

variable "alarm_name" {
  description = "The name for the alarm that is associated with the metric."
}
