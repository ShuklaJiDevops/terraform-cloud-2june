module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.11.0"
  bucket  = "s3-72-terraform-31may-2023"
}