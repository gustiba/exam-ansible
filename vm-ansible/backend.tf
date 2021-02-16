terraform {
  backend "s3" {
    bucket = "jcde-terraform-state01"
    key    = "terraform/projectWeb/tfstate"
    region = "ap-southeast-1"
  }
}
