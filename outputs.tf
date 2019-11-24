output "memory_size" {
  value = var.memory_size
}

output "timeout" {
  value = var.timeout
}

output "source_code_size" {
  value = aws_lambda_function.withintent.source_code_size
}

output "lambda_arn" {
  value = aws_lambda_function.withintent.arn
}

output "lambda" {
  value = aws_lambda_function.withintent
}
