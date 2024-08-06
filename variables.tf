variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The region in which resources will be created"
  type        = string
  default     = "us-central1"
}

variable "service_account_id" {
  description = "The ID of the service account"
  type        = string
}

variable "service_account_display_name" {
  description = "The display name of the service account"
  type        = string
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}
