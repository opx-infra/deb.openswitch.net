provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "deb" {
  bucket        = "deb.openswitch.net"
  region        = "us-west-2"
  acl           = "public-read"

  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "aptly" {
  bucket        = "aptly.openswitch.net"
  region        = "us-west-2"
  acl           = "private"
}
