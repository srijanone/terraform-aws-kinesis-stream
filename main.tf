resource "aws_kinesis_stream" "this" {
  name             = var.name
  shard_count      = var.shard_count
  retention_period = var.retention_period

  shard_level_metrics       = var.shard_level_metrics
  enforce_consumer_deletion = var.enforce_consumer_deletion
  encryption_type           = var.encryption_type #tfsec:ignore:AWS024
  # checkov:skip=CKV_AWS_43: This will be passed as variable
  kms_key_id = var.kms_key_id
  tags = merge(
    {
      Name = format("%s-stream", var.name)
    },
    var.tags
  )

}