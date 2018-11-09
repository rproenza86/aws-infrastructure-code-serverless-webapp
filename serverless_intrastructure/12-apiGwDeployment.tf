# API deployment
resource "aws_api_gateway_deployment" "super_gw_deployment" {
  rest_api_id = "${aws_api_gateway_rest_api.super_gw.id}"
  stage_name  = "DeploySuperAPI"

  depends_on = [
    "aws_api_gateway_integration.getheroeslist_integration",
    "aws_api_gateway_integration.getmissiondetails_integration",
  ]
}
