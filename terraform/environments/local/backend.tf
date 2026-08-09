terraform {
  backend "s3" {
    bucket                      = "tf-state-bucket"
    key                         = "local/terraform.tfstate"
    region                      = "us-east-1"
    use_lockfile                = true
    access_key                  = "test"
    secret_key                  = "test"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    use_path_style              = true

    endpoints = {
      s3 = "http://localhost.floci.io:4566"
    }
  }
}