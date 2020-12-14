provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "default"
  region                  = "us-east-1"
}

module "kinesis_stream" {
  source      = "../"
  name        = "terraform-test-explore"
  shard_count = 1

  retention_period = 30
  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]
  encryption_type = "KMS"
  kms_key_id      = "xxxxxxxxxx"
}
