# Lab M4.02 - Terraform Variables & Parameterization

## Overview
Multi-environment S3 bucket deployment using Terraform variables.

## Environments
- **Dev:** dieciocho-lab3344-dev-bucket (versioning disabled)
- **Prod:** dieciocho-lab3344-prod-bucket (versioning enabled)

## Usage

### Deploy Dev
```bash
terraform apply -var-file="dev.tfvars"
```

### Deploy Prod
```bash
terraform workspace select prod
terraform apply -var-file="prod.tfvars"
```

## Variables
- `environment`: dev/staging/prod
- `bucket_prefix`: Bucket name prefix
- `enable_versioning`: Enable S3 versioning
- `aws_region`: AWS region
- `tags`: Resource tags

## Outputs
- `bucket_id`: Bucket name
- `bucket_arn`: Bucket ARN
- `bucket_region`: Bucket region
- `versioning_enabled`: Versioning status

## Key Learnings
- Variables make Terraform configurations reusable
- Validation catches errors early
- .tfvars files separate code from configuration
- Workspaces isolate state between environments
- DRY principle: one codebase, multiple environments