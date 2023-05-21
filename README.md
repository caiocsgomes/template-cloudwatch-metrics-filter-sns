# template-terraform-cloudwatch-logs-metrics-sns



## Testing

```bash
aws logs create-log-group --log-group-name my-log-group
aws logs create-log-stream --log-group-name my-log-group --log-stream-name my-log-stream

aws logs put-log-events \
  --log-group-name my-log-group \
  --log-stream-name my-log-stream \
  --log-events timestamp=$(date +%s000),message="This is a log message"

```

## Resources

- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_metric_filter
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm