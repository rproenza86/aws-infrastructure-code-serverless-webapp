# getheroeslist resource and method
resource "aws_api_gateway_resource" "getheroeslist" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  parent_id   = "${aws_api_gateway_rest_api.super_gw.root_resource_id}"
  path_part   = "getheroeslist"
}

# getmissiondetails resource
resource "aws_api_gateway_resource" "getmissiondetails" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  parent_id   = "${aws_api_gateway_rest_api.super_gw.root_resource_id}"
  path_part   = "getmissiondetails"
}