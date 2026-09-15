terraform {
  backend "gcs" {
    bucket = "terraform-state-25139972221"
    prefix = "terraform/dev"
  }
}
