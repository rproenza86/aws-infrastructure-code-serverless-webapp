# for getheroeslist Lambda functions, access is granted using the aws_lambda_permission resource
resource "aws_lambda_permission" "apigw-getheroeslist-permission" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.getheroeslist.arn}"
  principal     = "apigateway.amazonaws.com"

  # The /*/* portion grants access from any method on any resource
  # within the API Gateway "REST API".
  # source_arn = "${aws_api_gateway_deployment.super_gw_deployment.execution_arn}/*/*"
  source_arn = "arn:aws:execute-api:${var.region}:883394708467:${aws_api_gateway_rest_api.super_gw.id}/*/${aws_api_gateway_method.getheroeslist_cors_method.http_method}${aws_api_gateway_resource.getheroeslist.path}"
}

# for getmissiondetails Lambda functions, access is granted using the aws_lambda_permission resource
resource "aws_lambda_permission" "apigw-getmissiondetails-permission" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.getmissiondetails.arn}"
  principal     = "apigateway.amazonaws.com"

  # The /*/* portion grants access from any method on any resource
  # within the API Gateway "REST API".
  # source_arn = "${aws_api_gateway_deployment.super_gw_deployment.execution_arn}/*/*"
  source_arn = "arn:aws:execute-api:${var.region}:883394708467:${aws_api_gateway_rest_api.super_gw.id}/*/${aws_api_gateway_method.getmissiondetails_cors_method.http_method}${aws_api_gateway_resource.getmissiondetails.path}"
}
