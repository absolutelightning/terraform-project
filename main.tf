resource "aws_cloudtrail" "example" {
  name                          = "example"
  s3_bucket_name                = module.s3_bucket[1].bucket_names[1]
  s3_key_prefix                 = "prefix"
  include_global_service_events = false
}

module "s3_bucket" {
  count = 3
  source = "./s3_module"
}

provider "aws" {
  region = "us-west-2"
}