terraform {
  backend "s3" {
    bucket         = "voronintfstate"
    encrypt        = true
    key            = "AWS/Dev/terraform-states/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform_state_aws_us_east_2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.74.2"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }

  required_version = ">= 0.14"
}