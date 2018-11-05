# Output variables

# DB table name
output "dynamoDb_created_table_name" {
  value = "${aws_dynamodb_table.suppermission-table.name}"
}

# DB added row item object
output "db_item_added-batman" {
  value = "${aws_dynamodb_table_item.batman.item}"
}

# DB added row item object
output "db_item_added-superman" {
  value = "${aws_dynamodb_table_item.superman.item}"
}

# DB added row item object
output "db_item_added-winchester_brothers" {
  value = "${aws_dynamodb_table_item.winchester_brothers.item}"
}

# DB added row item object
output "db_item_added-iron_man" {
  value = "${aws_dynamodb_table_item.iron_man.item}"
}
