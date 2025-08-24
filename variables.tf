# Email to receive budget alerts
variable "notification_email" {
  description = "Email address for AWS budget alerts"
  type        = string
}

variable "budget_limit" {
  description = "Monthly budget limit"
  type        = number
  default     = 5
}

variable "budget_currency" {
  description = "Currency for the budget limit"
  type        = string
  default     = "USD"
}
