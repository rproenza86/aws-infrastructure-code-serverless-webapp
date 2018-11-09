# getheroeslist options integration
resource "aws_api_gateway_integration" "getheroeslist_options_integration" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id = "${aws_api_gateway_resource.getheroeslist.id}"
  http_method = "${aws_api_gateway_method.getheroeslist_options_method.http_method}"
  type        = "MOCK"
  depends_on  = ["aws_api_gateway_method.getheroeslist_options_method"]
}

resource "aws_api_gateway_integration_response" "getheroeslist_options_integration_response" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id = "${aws_api_gateway_resource.getheroeslist.id}"
  http_method = "${aws_api_gateway_method.getheroeslist_options_method.http_method}"
  status_code = "${aws_api_gateway_method_response.getheroeslist_options_200.status_code}"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods" = "'GET,OPTIONS,POST,PUT'"
    "method.response.header.Access-Control-Allow-Origin"  = "'*'"
  }

  depends_on = ["aws_api_gateway_method_response.getheroeslist_options_200"]
}

# getmissiondetails options integration
resource "aws_api_gateway_integration" "getmissiondetails_options_integration" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id = "${aws_api_gateway_resource.getmissiondetails.id}"
  http_method = "${aws_api_gateway_method.getmissiondetails_options_method.http_method}"
  type        = "MOCK"
  depends_on  = ["aws_api_gateway_method.getmissiondetails_options_method"]
}

resource "aws_api_gateway_integration_response" "getmissiondetails_options_integration_response" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id = "${aws_api_gateway_resource.getmissiondetails.id}"
  http_method = "${aws_api_gateway_method.getmissiondetails_options_method.http_method}"
  status_code = "${aws_api_gateway_method_response.getmissiondetails_options_200.status_code}"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods" = "'GET,OPTIONS,POST,PUT'"
    "method.response.header.Access-Control-Allow-Origin"  = "'*'"
  }

  depends_on = ["aws_api_gateway_method_response.getmissiondetails_options_200"]
}

