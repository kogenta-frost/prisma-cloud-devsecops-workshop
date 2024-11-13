provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "6c7d87b9-2a8a-4c1d-b847-f3203d55da63"
    git_commit           = "a9e3e8f97623b661c8d10faa3e1341d31dd1acc7"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-13 17:29:56"
    git_last_modified_by = "34490821+kogenta-frost@users.noreply.github.com"
    git_modifiers        = "34490821+kogenta-frost"
    git_org              = "kogenta-frost"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
