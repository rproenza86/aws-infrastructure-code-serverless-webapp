resource "aws_lambda_function" "getheroeslist" {
  filename         = "${path.module}/files/getheroeslist.zip"
  function_name    = "getheroeslist"
  role             = "${aws_iam_role.dynamodb_scan_role.arn}"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("${path.module}/files/getheroeslist.zip"))}"
  runtime          = "nodejs8.10"
}

resource "aws_lambda_function" "getmissiondetails" {
  filename         = "${path.module}/files/getmissiondetails.zip"
  function_name    = "getmissiondetails"
  role             = "${aws_iam_role.dynamodb_query_role.arn}"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("${path.module}/files/getmissiondetails.zip"))}"
  runtime          = "nodejs8.10"
}