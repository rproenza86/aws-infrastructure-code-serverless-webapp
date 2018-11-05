# Create a non-sql DynamoDB table
resource "aws_dynamodb_table" "suppermission-table" {
  name           = "SuperMission"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "SuperHero"

  attribute {
    name = "SuperHero"
    type = "S"
  }

  tags {
    Name        = "suppermission-dynamodb-table"
    Environment = "production"
  }
}

# Create and add suppermission-table items
resource "aws_dynamodb_table_item" "batman" {
  table_name = "${aws_dynamodb_table.suppermission-table.name}"
  hash_key   = "${aws_dynamodb_table.suppermission-table.hash_key}"

  item = <<ITEM
            {
                "SuperHero": {"S":"Batman"},
                "Villain1": {"S":"Joker"},
                "Villain2":{"S": "Bane"},
                "Villain3": {"S":"Ras Al Ghul"},
                "MissionStatus": {"S":"In progress"},
                "SecretIdentity": {"S":"Bruce Wayne"}
            }
            ITEM
}

resource "aws_dynamodb_table_item" "superman" {
  table_name = "${aws_dynamodb_table.suppermission-table.name}"
  hash_key   = "${aws_dynamodb_table.suppermission-table.hash_key}"

  item = <<ITEM
            {
                "SuperHero": {"S":"Superman"},
                "Villain1": {"S":"Doomsday"},
                "Villain2":{"S": "General Zod"},
                "Villain3": {"S":"Lex Luthor"},
                "MissionStatus": {"S":"In progress"},
                "SecretIdentity": {"S":"Clark Kent"}
            }
            ITEM
}

resource "aws_dynamodb_table_item" "winchester_brothers" {
  table_name = "${aws_dynamodb_table.suppermission-table.name}"
  hash_key   = "${aws_dynamodb_table.suppermission-table.hash_key}"

  item = <<ITEM
            {
                "SuperHero": {"S": "The Winchester Brothers"},
                "Villain1": {"S": "Vampires"},
                "Villain2": {"S": "Ghosts"},
                "Villain3": {"S": "Werewolves"},
                "MissionStatus": {"S": "Complete"},
                "SecretIdentity": {"S": "Sam and Dean"}
            }
            ITEM
}

resource "aws_dynamodb_table_item" "iron_man" {
  table_name = "${aws_dynamodb_table.suppermission-table.name}"
  hash_key   = "${aws_dynamodb_table.suppermission-table.hash_key}"

  item = <<ITEM
            {
                "SuperHero": {"S": "Iron Man"},
                "Villain1": {"S": "Apocalypse"},
                "Villain2": {"S": "Doctor Doom"},
                "Villain3": {"S": "Loki"},
                "MissionStatus": {"S": "In progress"},
                "SecretIdentity": {"S": "Tony Stark"}
            }
            ITEM
}
