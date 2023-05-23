# AWS CloudWatch and SNS Terraform Module

This is a Terraform module which creates a CloudWatch metric filter for a log group, an SNS topic, and a CloudWatch alarm in AWS.
It is used to send notifications to an email address when we have specific logs in our log group.

## Features

- Creation of a CloudWatch metric filter for a log group
- Setup of a CloudWatch alarm for the metric
- Creation of an SNS Topic
- Setup of the alarm to send notifications to the SNS Topic when it triggers
- Setup of email as subscription for the SNS topic

## Testing

```bash
# To create a log group, log stream, and log event
aws logs create-log-group --log-group-name metric-filter-test
aws logs create-log-stream --log-group-name metric-filter-test --log-stream-name metric-filter-test-stream

aws logs put-log-events \
  --log-group-name metric-filter-test \
  --log-stream-name metric-filter-test-stream \
  --log-events timestamp=$(date +%s000),message="ERROR"

```

## Resources

- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_metric_filter
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm