resource "aws_s3_bucket" "b" {
  bucket = var.MYBUCKETNAME


  tags = {
    Name = "${var.MYBUCKETNAME}"
  }
}
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.b.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.example]
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
