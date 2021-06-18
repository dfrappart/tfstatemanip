######################################################################
# Access to Azure
######################################################################

terraform {
  
  #backend "azurerm" {}
  required_providers {
    azurerm = {}
    azuread = {}


  }
}

provider "azuread" {
  
  client_id                                = var.AzureADClientID
  client_secret                            = var.AzureADClientSecret
  tenant_id                                = var.AzureTenantID

  #features {}
  
}

provider "azurerm" {
  subscription_id                          = var.AzureSubscriptionID
  client_id                                = var.AzureClientID
  client_secret                            = var.AzureClientSecret
  tenant_id                                = var.AzureTenantID

  features {}
  
}




######################################################################
# Module call
######################################################################

######################################################################
# Azure resources

# Creating the Resource Group

module "ResourceGroup" {

  #Module Location
  source                                  = "github.com/dfrappart/Terra-AZModuletest//Modules_building_blocks//003_ResourceGroup/"
  #Module variable      
  RGSuffix                                = "cloudouest1"
  RGLocation                              = var.AzureRegion
  ResourceOwnerTag                        = var.ResourceOwnerTag
  CountryTag                              = var.CountryTag
  CostCenterTag                           = var.CostCenterTag
  EnvironmentTag                          = var.Environment
  Project                                 = var.Project

}

module "MySQLPWD_to_KV" {

  #Module Location
  source                                  = "github.com/dfrappart/Terra-AZModuletest//Modules_building_blocks//412_KeyvaultSecret/"

  #Module variable     
  KeyVaultSecretSuffix                    = "sql"
  #PasswordValue                           = module.SecretTest.Result
  KeyVaultId                              = data.azurerm_key_vault.keyvault.id
  ResourceOwnerTag                        = var.ResourceOwnerTag
  CountryTag                              = var.CountryTag
  CostCenterTag                           = var.CostCenterTag
  Environment                             = var.Environment
  Project                                 = var.Project


}

module "MySQL" {
  source                              = "github.com/dfrappart/Terra-AZModuletest//Custom_Modules//PaaS_SRVDB_mySql"

  # Global variables
  Location                            = module.ResourceGroup.RGLocation
  RGName                              = module.ResourceGroup.RGName
  LawId                               = data.azurerm_log_analytics_workspace.LAWLog.id
  STAId                               = data.azurerm_storage_account.STALog.id

  mysqlsuffix                         = "cloudouest1"
  # MySQL - Globals
  MySQLSkuName                        = "GP_Gen5_2"
  MySQLVersion                        = "8.0"
  MySQLPwd                            = module.MySQLPWD_to_KV.SecretFullOutput.value
  #MySql threat protection
  ThreatAlertEmail                    = ["david@teknews.cloud"]
  ThreatAlertTargetStorageKey         = data.azurerm_storage_account.STALog.primary_access_key 
  ThreatAlertTargetEP                 = data.azurerm_storage_account.STALog.primary_blob_endpoint
  MySQLDbList                         = var.MySQLDbList
  
  MySQLADAdminObjectId                = "546e2d3b-450e-4049-8f9c-423e1da3444c"
  
  AllowedPubIPs                        = ["162.158.89.111","162.158.91.125"]
  # Monitoring

  ACG1Id                              = data.azurerm_monitor_action_group.SubACG.id

  # Tags
  ResourceOwnerTag                        = var.ResourceOwnerTag
  CountryTag                              = var.CountryTag
  CostCenterTag                           = var.CostCenterTag
  EnvironmentTag                          = var.Environment

}