terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "98473d5b-c639-404e-9bf2-91559fe65ff8"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "subhrg"          #ritkargv
    storage_account_name = "subhstorageacct" #ritkasav
    container_name       = "subhcontainer"   #ritkascv
    key                  = "subh.tfstate"    #first.tfstate
  }
}