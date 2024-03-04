output "bucket_names" {
    value = [
        aws_s3_bucket.example[0].id,
        aws_s3_bucket.example[1].id,
    ]
}