locals {
  common_tags = {
    company      = var.company
    project      = "${var.company}-${var.project}"
    billing_code = var.billing_code
  }
  s3_bucket_name = "s3-bucket-${random_integer.s3.result}"
}
resource "random_integer" "s3" {
  min = 10000
  max = 999999
}