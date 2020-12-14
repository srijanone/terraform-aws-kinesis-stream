![Static security analysis for Terraform](https://github.com/srijanone/terraform-aws-kinesis-stream/workflows/Static%20security%20analysis%20for%20Terraform/badge.svg)
# Terraform module for AWS Kinesis Stream resource

To know how to use please refer to `examples` folder  
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.7, < 0.14 |
| aws | >= 2.68, < 4.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.68, < 4.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| encryption\_type | (Optional) The encryption type to use. The only acceptable values are NONE or KMS. The default value is NONE. | `string` | `"KMS"` | no |
| enforce\_consumer\_deletion | (Optional) A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is false. | `bool` | `false` | no |
| kms\_key\_id | (Optional) The GUID for the customer-managed KMS key to use for encryption. You can also use a Kinesis-owned master key by specifying the alias alias/aws/kinesis. | `string` | `null` | no |
| name | (Required) A name to identify the stream. This is unique to the AWS account and region the Stream is created in. | `string` | n/a | yes |
| retention\_period | (Optional) Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours. Minimum value is 24. Default is 24. | `number` | `24` | no |
| shard\_count | (Required) The number of shards that the stream will use. Amazon has guidelines for specifying the Stream size that should be referenced when creating a Kinesis stream. | `number` | `1` | no |
| shard\_level\_metrics | (Optional) A list of shard-level CloudWatch metrics which can be enabled for the stream. See Monitoring with CloudWatch for more. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable. | `list(string)` | `[]` | no |
| tags | (Optional) A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The Amazon Resource Name (ARN) specifying the Stream (same as id) |
| id | The unique Stream id |
| name | The unique Stream name |
| shard\_count | The count of Shards for this Stream |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
