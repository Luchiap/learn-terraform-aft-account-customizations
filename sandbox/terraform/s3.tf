data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  provider = aws.west
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
}
resource "aws_ec2_transit_gateway" "AFTtransitgateway3" {
  provider = aws.west
  description = "example transit gateway deployed with account cust"
}

