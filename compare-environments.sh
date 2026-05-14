#!/bin/bash

echo "=== Development Environment ==="
aws s3api get-bucket-versioning --bucket dieciocho-lab3344-dev-bucket
aws s3api get-bucket-tagging --bucket dieciocho-lab3344-dev-bucket

echo ""
echo "=== Production Environment ==="
aws s3api get-bucket-versioning --bucket dieciocho-lab3344-prod-bucket
aws s3api get-bucket-tagging --bucket dieciocho-lab3344-prod-bucket