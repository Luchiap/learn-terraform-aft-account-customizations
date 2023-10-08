data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
resource "aws_ec2_transit_gateway" "AFTtransitgateway3" {
  description = "example transit gateway deployed with global customizations3"
}
resource "aws_ec2_transit_gateway" "AFTtransitgateway4" {
  description = "example transit gateway deployed with global customizations3"
}
