provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "taylor-"

  tags = {
    Environment          = "Dev"
    git_commit           = "c7f59568370b0c7885b2af6c56c383c62fd9c525"
    git_file             = "code/simple_s3.tf"
    git_last_modified_at = "2024-02-20 18:06:36"
    git_last_modified_by = "115211674+taylorwood95@users.noreply.github.com"
    git_modifiers        = "115211674+taylorwood95/tprendervill"
    git_org              = "taylorwood95"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "151db903-bf04-4b37-a814-d0fd51e19605"
  }
}


