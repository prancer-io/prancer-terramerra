output "id" {
  description = "The URL for the created Amazon SQS queue"
  value = aws_sqs_queue.sqs.id
}

output "arn" {
  description = "The ARN of the SQS queue"
  value = aws_sqs_queue.sqs.arn
}
