terraform {
  backend "s3" {
    bucket = "expensestatefile"
    key    = "testing/state"
    region = "us-east-1"
  }
}

resource "null_resource" "example" {}