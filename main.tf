provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_service_account" "sa" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
}

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.region
}

resource "google_storage_bucket_iam_member" "bucket_writer" {
  bucket = google_storage_bucket.bucket.name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:${google_service_account.sa.email}"
}

resource "google_storage_bucket_iam_member" "bucket_reader" {
  bucket = google_storage_bucket.bucket.name
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.sa.email}"
}
