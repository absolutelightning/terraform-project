
module "s3" {
    source = "./s3"
}

resource "aws_s3_bucket_public_access_block" "example_1" {
  bucket = module.s3.bucket_names[0]

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = false
  restrict_public_buckets = true
}

resource "aws_s3_bucket_public_access_block" "example_2" {
  bucket = module.s3.bucket_names[1]

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = false
  restrict_public_buckets = true
}


