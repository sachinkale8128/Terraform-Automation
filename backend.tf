terraform {
  backend "s3" {
    bucket = "kalessample-batch"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "sachinb-table"
  }
}
