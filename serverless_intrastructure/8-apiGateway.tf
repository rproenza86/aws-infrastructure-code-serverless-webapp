# Serverless Web App  API Gateway
resource "aws_api_gateway_rest_api" "super_gw" {
  name        = "ServerlessSuperHeroesApi"
  description = "Serverless Web Application to manage Super Heroes"
}
