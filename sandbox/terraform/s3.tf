data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
}
resource "aws_ec2_transit_gateway" "AFTtransitgateway3" {
  description = "example transit gateway deployed with account cust"
}
resource "aws_ec2_transit_gateway" "AFTtransitgateway4" {
  provider = aws.us_east_2
  description = "example transit4 gateway deployed with account cust"
}
resource "aws_ec2_transit_gateway" "AFTtransitgateway5" {
  provider = aws.eu_central_2
  description = "example transit5 gateway deployed with account cust"
}
