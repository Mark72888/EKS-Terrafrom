terraform {
  backend "s3" {
    bucket = "mark.s3"
    key    = "EKS-Cluster/terraform.tfstate"
    region = "us-east-1"
  }
} 