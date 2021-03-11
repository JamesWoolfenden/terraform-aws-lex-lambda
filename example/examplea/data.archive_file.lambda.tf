data "archive_file" "lambda" {
  type        = "zip"
  source_file = "${path.module}/template/lambda.js"
  output_path = "${path.module}/lambda.zip"
}
