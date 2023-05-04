resource "aws_s3_bucket" "client" {
  bucket = "${var.project}-${var.service}"
  tags   = local.tags
}

data "aws_iam_policy_document" "s3_bucket_policy" {
  statement {
    sid       = "GrantCloudFrontReadAccess"
    effect    = "Allow"
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.client.arn}/*"]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.client.iam_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.client.id
  policy = data.aws_iam_policy_document.s3_bucket_policy.json
}
