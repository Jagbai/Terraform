provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    eks             = "http://localhost:4566"
    ec2             = "http://localhost:4566"
    iam             = "http://localhost:4566"
    cloudformation  = "http://localhost:4566"
    sts             = "http://localhost:4566"
    kms             = "http://localhost:4566"
    logs            = "http://localhost:4566"

  }
}
