resource "aws_iam_policy" "dynamodb_scan_role_policy" {
  name        = "SuperDynamoDBScanRolePolicy"
  path        = "/"
  description = "Super Dynamo DB Scan Role Policy"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "dynamodb:Scan",
                "s3:GetObject",
                "s3:PutObject",
                "dynamodb:BatchWriteItem"
            ],
            "Resource": [
                "*"
            ],
            "Effect": "Allow"
        }
    ]
}
EOF
}

resource "aws_iam_policy" "dynamodb_query_role_policy" {
  name        = "SuperDynamoDBQueryRolePolicy"
  path        = "/"
  description = "Super Dynamo DB Query Role Policy"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Condition": {
                "ForAllValues:StringEquals": {
                    "dynamodb:Attributes": [
                        "SuperHero",
                        "MissionStatus",
                        "Villain1",
                        "Villain2",
                        "Villain3"
                    ]
                }
            },
            "Action": [
                "dynamodb:Query"
            ],
            "Resource": "*",
            "Effect": "Allow"
        }
    ]
}
EOF
}
