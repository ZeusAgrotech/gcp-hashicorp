terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "athena-prod-328714"
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "project-services" {
  source = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "10.1.1"

  project_id = "athena-prod-328714"

  activate_apis = [
    "compute.googleapis.com",
    "cloudbuild.googleapis.com",
    "cloudscheduler.googleapis.com",
    "artifactregistry.googleapis.com",
    "redis.googleapis.com",
    "dataflow.googleapis.com",
    "storage.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "storagetransfer.googleapis.com",
    "bigquery.googleapis.com",
    "bigqueryconnection.googleapis.com",
    "bigquerymigration.googleapis.com",
    "bigqueryreservation.googleapis.com",
    "bigquerystorage.googleapis.com",
    "container.googleapis.com",
    "firebase.googleapis.com",
    "fcm.googleapis.com",
    "fcmdata.googleapis.com",
    "fcmregistrations.googleapis.com",
    "firebaseappcheck.googleapis.com",
    "firebaseappdistribution.googleapis.com",
    "firebaseapptesters.googleapis.com",
    "firebasedatabase.googleapis.com",
    "firebasedynamiclinks.googleapis.com",
    "firebaseextensions.googleapis.com",
    "firebasehosting.googleapis.com",
    "firebaseinappmessaging.googleapis.com",
    "firebaseinstallations.googleapis.com",
    "firebaseml.googleapis.com",
    "firebasepredictions.googleapis.com",
    "firebaseremoteconfig.googleapis.com",
    "firebaserules.googleapis.com",
    "firebasestorage.googleapis.com",
    "cloudfunctions.googleapis.com",
    "maps-android-backend.googleapis.com",
    "maps-ios-backend.googleapis.com",
    "maps-backend.googleapis.com",
    "pubsub.googleapis.com"
  ]
}
