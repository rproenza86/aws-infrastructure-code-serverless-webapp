# getheroeslist lambda+gw integration
resource "aws_api_gateway_integration" "getheroeslist_integration" {
    rest_api_id   = "${aws_api_gateway_rest_api.super_gw.id}"
    resource_id   = "${aws_api_gateway_resource.getheroeslist.id}"
    http_method   = "${aws_api_gateway_method.getheroeslist_cors_method.http_method}"
    integration_http_method = "POST"
    type          = "AWS_PROXY"
    uri           = "arn:aws:apigateway:${var.region}:lambda:path/2015-03-31/functions/${aws_lambda_function.getheroeslist.arn}/invocations"
    depends_on    = ["aws_api_gateway_method.getheroeslist_cors_method", "aws_lambda_function.getheroeslist"]
}

# getmissiondetails lambda+gw integration
resource "aws_api_gateway_integration" "getmissiondetails_integration" {
    rest_api_id   = "${aws_api_gateway_rest_api.super_gw.id}"
    resource_id   = "${aws_api_gateway_resource.getmissiondetails.id}"
    http_method   = "${aws_api_gateway_method.getmissiondetails_cors_method.http_method}"
    integration_http_method = "POST"
    type          = "AWS_PROXY"
    uri           = "arn:aws:apigateway:${var.region}:lambda:path/2015-03-31/functions/${aws_lambda_function.getmissiondetails.arn}/invocations"
    depends_on    = ["aws_api_gateway_method.getmissiondetails_cors_method", "aws_lambda_function.getmissiondetails"]
}

