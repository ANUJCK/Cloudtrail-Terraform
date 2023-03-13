variable "aws_profile" {
  description = "aws cred"
  default     = "default"
  type        = string
}

variable "shared_config_files" {
  description = "shared_config_files"
  default     = ["/Users/tf_users/.aws/config"]
}

variable "shared_credentials_files" {
  description = "shared_credentials_files"
  default     = ["/Users/tf_users/.aws/credentials"]
}

variable "region" {
  description = "aws default region"
  default     = "us-east-1"
  type        = string

}


variable "enable_log_file_validation" {
  type        = bool
  description = "Specifies whether log file integrity validation is enabled. Creates signed digest for validated contents of logs"
}

variable "is_multi_region_trail" {
  type        = bool
  description = "Specifies whether the trail is created in the current region or in all regions"
}

variable "include_global_service_events" {
  type        = bool
  description = "Specifies whether the trail is publishing events from global services such as IAM to the log files"
}

variable "enable_logging" {
  type        = bool
  description = "Enable logging for the trail"
}

variable "is_organization_trail" {
  type        = bool
  description = "The trail is an AWS Organizations trail"
}

variable "name" {
  type = string
  description =  "name of the log"
  default = "test" 
}

variable "create_aws_cloudtrail" {
  type = bool
  default = true
  description = "whether to create the log or not"
}

variable "tags" {
  type = map
  default = {
    key1 = "value1"
    key2 = "value2"
  }
  description = "name tags"
}

variable "s3_bucket_name" {
  type        = string
  description = "S3 bucket name for CloudTrail logs"
}