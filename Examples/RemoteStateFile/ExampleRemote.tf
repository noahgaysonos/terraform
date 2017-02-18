terraform remote config -backend-config="bucket=<s3_bucket_to_store_tfstate>" -backend-config="key=terraform.tfstate" -backend=s3
terraform remote pull
terraform apply
terraform remote push
