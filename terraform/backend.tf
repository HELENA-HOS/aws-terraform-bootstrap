terraform {

  backend "s3" {

    bucket = "helena-terraform-state"

    key = "terraform-bootstrap/terraform.tfstate"

    region = "us-east-1"

    use_lockfile = true

  }

}