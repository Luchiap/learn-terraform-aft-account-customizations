data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
}
resource "aws_ec2_transit_gateway" "sandbox_transitgateway" {
  description = "Example Transit Gateway"
}
resource "aws_ec2_transit_gateway" "sandbox_transitgatewayyy" {
  description = "Example Transit Gatewayyy"
}
