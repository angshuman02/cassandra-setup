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
  project = "cf-mip-demo-64"
  region  = "europe-west4"
  zone    = "europe-west4-a"
  credentials = "cf-mip-demo-64-cb2c76a850d6.json"
}
 

provider "google-beta" {

  project = "cf-mip-demo-64"
  region  = "europe-west4"
 
}