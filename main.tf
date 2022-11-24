terraform {
    required_version = "~> 1.3.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Manasa_infra" {
	ami = "ami-0b0dcb5067f052a63" 
	instance_type = "t2.nano"
}
