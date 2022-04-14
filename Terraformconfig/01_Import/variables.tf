##############################################################
#Variable declaration for provider

variable "AzureSubscriptionID" {
  type                          = string
  description                   = "The subscription id for the authentication in the provider"
}

variable "AzureClientID" {
  type                          = string
  description                   = "The application Id, taken from Azure AD app registration"
}


variable "AzureClientSecret" {
  type                          = string
  description                   = "The Application secret"

}

variable "AzureTenantID" {
  type                          = string
  description                   = "The Azure AD tenant ID"
}

variable "AzureADClientID" {
  type                          = string
  description                   = "The application Id, taken from Azure AD app registration for Azure AD provider"
}


variable "AzureADClientSecret" {
  type                          = string
  description                   = "The Application secretfor Azure AD provider"

}

######################################################
# Common variables

variable "AzureRegion" {
  type                            = string
  description                     = "The Azure region for deployment"
  default                         = "westeurope"
}

variable "ResourceOwnerTag" {
  type                            = string
  description                     = "Tag describing the owner"
  default                         = "That would be me"
}

variable "CountryTag" {
  type                            = string
  description                     = "Tag describing the Country"
  default                         = "fr"
}

variable "CostCenterTag" {
  type                            = string
  description                     = "Tag describing the Cost Center"
  default                         = "tfstate"
}

variable "Project" {
  type                            = string
  description                     = "The name of the project"
  default                         = "clw"
}

variable "Environment" {
  type                            = string
  description                     = "The environment, dev, prod..."
  default                         = "lab"
}

variable "ResourcesSuffix" {
  type                            = string
  description                     = "The environment, dev, prod..."
  default                         = "dtbk"
}

variable "DefaultTags" {
  type                                  = map
  description                           = "Define a set of default tags"
  default                               = {
    ResourceOwner                       = "That would be me"
    Country                             = "fr"
    CostCenter                          = "labtf"
    Project                             = "tfmodule"
    Environment                         = "lab"
    ManagedBy                           = "Terraform"

  }
}

variable "ExtraTags" {
  type                                  = map
  description                           = "Define a set of additional optional tags."
  default                               = {}
}


######################################################
# Data sources variables


variable "SubsetupSTOAName" {
  type                            = string
  description                     = "Name of the storage account containing the remote state"
}

variable "SubsetupAccessKey" {
  type                            = string
  description                     = "Access Key of the storage account containing the remote state"
}

variable "SubsetupContainerName" {
  type                            = string
  description                     = "Name of the container in the storage account containing the remote state"
}

variable "SubsetupKey" {
  type                            = string
  description                     = "State key"
}

######################################################
# Database 
variable "MySQLDbList" {
  type        = list
  description = "List of MySQL databases names."
  default     = ["defaultdbrws"]
}