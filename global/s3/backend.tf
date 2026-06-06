terraform {
  backend "s3" {
    bucket       = "my-tf-practical-bucket-166373406634-eu-west-1-an"
    key          = "global/terraform.tfstate"
    use_lockfile = true
    region       = "eu-west-1"
  }
}