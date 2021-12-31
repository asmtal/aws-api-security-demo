variable "api_name" {
  type        = string
  description = "The name of the REST API in API Gateway."
  default     = "tf_api"
}

variable "api_description" {
  type        = string
  description = "The description of the REST API in API Gateway."
  default     = "Application security demo, deployed by Terraform."
}

variable "lambda_name" {
  type        = string
  description = "The name of the Lambda function."
  default     = "tf_lambda"
}

variable "lambda_description" {
  type        = string
  description = "The description of the Lambda function."
  default     = "Application security demo, deployed by Terraform."
}

variable "waf_name" {
  type        = string
  description = "The name of the Lambda function."
  default     = "StandardACL_Regional"
}
