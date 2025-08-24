output "sns_topic_arn" {
  description = "ARN of the SNS Topic for budget alerts"
  value       = aws_sns_topic.budget_alerts.arn
}

output "budget_name" {
  description = "Name of the AWS budget"
  value       = aws_budgets_budget.monthly_budget.name
}
