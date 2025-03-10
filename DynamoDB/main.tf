resource "aws_dynamodb_table" "my_table" {
  name         = "my-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"  # Free-tier friendly (No fixed costs)
  range_key    = "id"
  hash_key     = "role"

#Defining attributes
  attribute {
    name = "id"
    type = "N" # "S" = String, "N" = Number, "B" = Binary
  }

  attribute {
    name="role"
    type="S"
  }

  tags = {
    Name        = "MyDynamoDBTable"
    Environment = "Development"
  }
}

# Insert Data into DynamoDB Table
resource "aws_dynamodb_table_item" "item1" {
  table_name = aws_dynamodb_table.my_table.name
  range_key = "id"
  hash_key   = "role"

  item = <<EOF
{
  "id": {"N": "1"},
  "name": {"S": "Samarth"},
  "age": {"N": "21"},
  "role": {"S": "Developer"}
}
EOF
}

resource "aws_dynamodb_table_item" "item2" {
  table_name = aws_dynamodb_table.my_table.name
  hash_key   = "role"
  range_key = "id"

 

  item = <<EOF
{
  "id": {"N": "2"},
  "name": {"S": "Karan"},
  "age": {"N": "30"},
  "role": {"S": "Manager"}
}
EOF
}

resource "aws_dynamodb_table_item" "item3" {
  table_name = aws_dynamodb_table.my_table.name
  hash_key   = "role"
  range_key = "id"


  item = <<EOF
{
  "id": {"N": "3"},
  "name": {"S": "Prajwal"},
  "age": {"N": "23"},
  "role": {"S": "Designer"}
}
EOF
}


