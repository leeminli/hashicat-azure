terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "leeml-org-azure2"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
