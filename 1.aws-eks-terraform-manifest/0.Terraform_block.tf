terraform {
    required_version = "> 0.14"
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
        }
    }
    /*
    backend "s3" {
        bucket = "terraform-remote-state-2021"
        key    = "vpc/terraform.tfstate"
        region = var.aws_region
    }*/
}
  