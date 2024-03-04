resource "aws_s3_bucket" "example" {
  count = 2

  bucket        = "ganes-bucket-${count.index + 1}"
  force_destroy = true
}