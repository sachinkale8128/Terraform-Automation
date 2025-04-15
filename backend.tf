terraform {
  backend "s3" {
    bucket = "kalessample-batch"
    key = "lockid"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
