variable "budget_limit" {
  description = "Monthly budget limit in USD"
  default     = 5
}

variable "notification_email" {
  description = "Email address for budget alerts"
  type        = string
}
