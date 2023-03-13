module "cloudtrail" {
  source = "../CT"

  count                         = var.create_aws_cloudtrail ? 0 : 1
  enable_logging                = var.enable_logging
  enable_log_file_validation    = var.enable_log_file_validation
  include_global_service_events = var.include_global_service_events
  is_multi_region_trail         = var.is_multi_region_trail
  is_organization_trail         = var.is_organization_trail
  s3_bucket_name                = var.s3_bucket_name
  tags                          = var.tags

}

