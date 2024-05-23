# resource "aws_s3_bucket" "bucket" {
#   bucket = "jenkins"  # Specify a globally unique bucket name


# }

# # Configure Terraform backend to use S3 you can create file call backend.tf
terraform {
  backend "s3" {
    bucket         = "jenkins-bucket2"           # Specify the name of your S3 bucket
    key            = "projeyW12/terraform.state" # Specify the name of the state file
    region         = "us-east-1"                 # Specify the AWS region of the bucket
    encrypt        = true                        # Optionally, enable encryption for the state file
    dynamodb_table = "terraform-lock"
  }

}
