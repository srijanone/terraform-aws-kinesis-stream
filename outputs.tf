output "id" {
  description = "The unique Stream id"
  value       = aws_kinesis_stream.this.id
}

output "name" {
  description = "The unique Stream name"
  value       = aws_kinesis_stream.this.name
}

output "shard_count" {
  description = "The count of Shards for this Stream"
  value       = aws_kinesis_stream.this.shard_count
}

output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the Stream (same as id)"
  value       = aws_kinesis_stream.this.arn
}
