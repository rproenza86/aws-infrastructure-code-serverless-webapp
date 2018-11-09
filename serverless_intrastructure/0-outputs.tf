# Output variables

# DB table name
output "dynamoDb_created_table_name" {
  value = "${aws_dynamodb_table.suppermission-table.name}"
}

#API  access URL
output "api_gateway_base_url" {
  value = "${aws_api_gateway_deployment.super_gw_deployment.invoke_url}"
}

# output "api_getheroeslist_endpoint" {
output "Get heroes list API endpoint" {
  value = "${aws_api_gateway_deployment.super_gw_deployment.invoke_url}/getheroeslist"
}

output "Get heroes mission details API endpoint" {
  value = "${aws_api_gateway_deployment.super_gw_deployment.invoke_url}/getmissiondetails"
}
