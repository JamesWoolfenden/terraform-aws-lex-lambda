data "archive_file" "lambda" {
  type        = "zip"
  source_file = "${path.cwd}/src/index.js"
  output_path = "${path.cwd}/lambda.zip"
}
