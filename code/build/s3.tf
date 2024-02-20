provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "33b0178c33757c5e9d9da0a2539a7d8e183ec191"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-02-20 17:27:14"
    git_last_modified_by = "115211674+taylorwood95@users.noreply.github.com"
    git_modifiers        = "115211674+taylorwood95"
    git_org              = "taylorwood95"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "f0fa18cd-2d43-4cfc-aaf3-13ee573946e3"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
