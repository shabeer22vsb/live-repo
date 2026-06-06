provider "aws" {
  region = "eu-west-1"
}
module "webserver-cluster" {
  source  = "github.com/shabeer22vsb/modules//services/webserver-cluster?ref=v.0.0.1"
  cluster_name = "staging"
  db_remote_state_bucket = "my-tf-practical-bucket-166373406634-eu-west-1-an"
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"
  instance_type = "t3.large"
  max_size = 2
  min_size = 1
}     