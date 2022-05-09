terraform {

    required_providers {
    google = {
      source = "hashicorp/google"
      version = "~>4.16.0"
    }

    google-beta ={
      source = "hashicorp/google-beta"
      version = "~> 3.0"
    }
  }
}

provider "google" {
  project = "cf-mip-dev-u4"
  region  = "europe-west1"
  zone    = "europe-west1-b"
  credentials = "cf-mip-dev-u4-bdf576e97623.json"
}
 

provider "google-beta" {

  project = "cf-mip-dev-u4"
  region  = "europe-west1"
 
}