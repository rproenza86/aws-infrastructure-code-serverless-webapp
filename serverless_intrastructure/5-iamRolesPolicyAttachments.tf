resource "aws_iam_role_policy_attachment" "attach_scan_role_policy" {
  role       = "${aws_iam_role.dynamodb_scan_role.name}"
  policy_arn = "${aws_iam_policy.dynamodb_scan_role_policy.arn}"
}

resource "aws_iam_role_policy_attachment" "attach_query_role_policy" {
  role       = "${aws_iam_role.dynamodb_query_role.name}"
  policy_arn = "${aws_iam_policy.dynamodb_query_role_policy.arn}"
}

