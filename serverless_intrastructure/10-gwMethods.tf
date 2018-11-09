# getheroeslist OPTION and POST methods
resource "aws_api_gateway_method" "getheroeslist_options_method" {
  rest_api_id   = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id   = "${aws_api_gateway_resource.getheroeslist.id}"
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "getheroeslist_cors_method" {
  rest_api_id   = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id   = "${aws_api_gateway_resource.getheroeslist.id}"
  http_method   = "POST"
  authorization = "NONE"
}

# getmissiondetails OPTION and POST methods
resource "aws_api_gateway_method" "getmissiondetails_options_method" {
  rest_api_id   = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id   = "${aws_api_gateway_resource.getmissiondetails.id}"
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "getmissiondetails_cors_method" {
  rest_api_id   = "${aws_api_gateway_rest_api.super_gw.id}"
  resource_id   = "${aws_api_gateway_resource.getmissiondetails.id}"
  http_method   = "POST"
  authorization = "NONE"
}
