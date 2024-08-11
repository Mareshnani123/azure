terraform {
  required_providers {
    azurerm={
        source = "harshicorp/azurerm"
    }
    random={
        source = "harshicorp/random"
    }
  }
}
provider "azurerm" {
    features={}
  
}
