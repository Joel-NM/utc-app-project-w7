terraform {
  backend "s3" {
    bucket         = "w7-jnm-terraform"      #We first create this bucket manually
    key            = "dev/terraform.tfstate" #in this bucket created this key
    region         = "us-east-1"
    encrypt        = true #keep our bucket encrypted
    dynamodb_table = "locktable"            #Here, we first manually created this
  }
}
