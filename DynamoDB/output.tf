#output the table Name after Creation
output "dynamodb_table_name" {
  value = aws_dynamodb_table.my_table.name
}
