data "aws_caller_identity" "current" {}
resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-gfdgdfgfdgfdgdfgfdgfd"
  provider = aws.us_east_2
}
resource "aws_ec2_transit_gateway" "AFTtransitgateway4" {
  provider = aws.us_east_2
  description = "example transit gateway 4deployed with account cust"
}
resource "aws_ec2_transit_gateway" "AFTtransitgateway8" {
  provider = aws.eu_central_2
  description = "example transit gateway 8deployed with account cust"
}
resource "aws_s3_bucket" "sandbox_bucketgfdg" {
  bucket = "aft-sandboxdfdsfgtrtyrtrtrt-${data.aws_caller_identity.current.account_id}"
  provider = aws.us_east_2
}
resource "aws_s3_bucket" "sandbox_bucketgfdgfdsxdfg" {
  bucket = "aft-sandboxdfdsfgfdsffsdfsdf-${data.aws_caller_identity.current.account_id}"
  provider = aws.eu_central_2
}
