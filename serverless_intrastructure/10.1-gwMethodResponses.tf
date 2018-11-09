# getheroeslist method response
resource "aws_api_gateway_method_response" "getheroeslist_options_200" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id = "${aws_api_gateway_resource.getheroeslist.id}"
  http_method = "${aws_api_gateway_method.getheroeslist_options_method.http_method}"
  status_code = "200"

  response_models {
    "application/json" = "Empty"
  }

  response_parameters {
    "method.response.header.Access-Control-Allow-Headers" = true
    "method.response.header.Access-Control-Allow-Methods" = true
    "method.response.header.Access-Control-Allow-Origin"  = true
  }

  depends_on = ["aws_api_gateway_method.getheroeslist_options_method"]
}

resource "aws_api_gateway_method_response" "getheroeslist_cors_method_response_200" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id = "${aws_api_gateway_resource.getheroeslist.id}"
  http_method = "${aws_api_gateway_method.getheroeslist_cors_method.http_method}"
  status_code = "200"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.getheroeslist_cors_method"]
}

# getmissiondetails method response
resource "aws_api_gateway_method_response" "getmissiondetails_options_200" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id = "${aws_api_gateway_resource.getmissiondetails.id}"
  http_method = "${aws_api_gateway_method.getmissiondetails_options_method.http_method}"
  status_code = "200"

  response_models {
    "application/json" = "Empty"
  }

  response_parameters {
    "method.response.header.Access-Control-Allow-Headers" = true
    "method.response.header.Access-Control-Allow-Methods" = true
    "method.response.header.Access-Control-Allow-Origin"  = true
  }

  depends_on = ["aws_api_gateway_method.getmissiondetails_options_method"]
}

resource "aws_api_gateway_method_response" "getmissiondetails_cors_method_response_200" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id = "${aws_api_gateway_resource.getmissiondetails.id}"
  http_method = "${aws_api_gateway_method.getmissiondetails_cors_method.http_method}"
  status_code = "200"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.getmissiondetails_cors_method"]
}


