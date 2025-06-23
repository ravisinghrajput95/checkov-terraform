terraform {
  backend "remote" {
    hostname     = "eu.repository.roche.com"
    organization = "uns-tf-backend"
    workspaces {
      prefix = "my-prefix-"
    }
  }
}

