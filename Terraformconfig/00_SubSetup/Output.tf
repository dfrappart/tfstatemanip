######################################################
# This file defines which value are sent to output
######################################################

###################################################################
# Outputs for Az subscription logging config module

###################################################################
# Outputs for RG

output "RGLogName" {

  value                   = module.BasicLogConfig.RGLogName
}

output "RGLogLocation" {

  value                   = module.BasicLogConfig.RGLogLocation
}

output "RGLogId" {

  value                   = module.BasicLogConfig.RGLogId
  sensitive               = true
}

###################################################################
#Output for the log storage account

output "STALogName" {
  value                   = module.BasicLogConfig.STALogName
}

output "STALogId" {
  value                   = module.BasicLogConfig.STALogId
  sensitive               = true
}

output "STALogPrimaryBlobEP" {
  value                   = module.BasicLogConfig.STALogPrimaryBlobEP
  sensitive               = true
}

output "STALogPrimaryQueueEP" {
  value                   = module.BasicLogConfig.STALogPrimaryQueueEP
  sensitive               = true
}

output "STALogPrimaryTableEP" {
  value                   = module.BasicLogConfig.STALogPrimaryTableEP
  sensitive               = true
}

output "STALogPrimaryFileEP" {
  value                   = module.BasicLogConfig.STALogPrimaryFileEP
  sensitive               = true
}

output "STALogPrimaryAccessKey" {
  value                   = module.BasicLogConfig.STALogPrimaryAccessKey
  sensitive               = true
}

output "STALogSecondaryAccessKey" {
  value                   = module.BasicLogConfig.STALogSecondaryAccessKey
  sensitive               = true
}

output "STALogConnectionURI" {
  value                   = module.BasicLogConfig.STALogConnectionURI
  sensitive               = true
}

###################################################################
#Output for the log analytics workspace

output "SubLogAnalyticsFull" {
  value                     = module.BasicLogConfig.SubLogAnalyticsFull
  sensitive                 = true
}

output "SubLogAnalyticsName" {
  value                     = module.BasicLogConfig.SubLogAnalyticsFull.name
  sensitive                 = true

}

##############################################################
#observability basics outputs
##############################################################

output "DeploymentType" {

  value                   = module.ObservabilityConfig.DeploymentType
}

##############################################################
#Output NetworkWatcher


output "NetworkWatcherName" {

  value                   = module.ObservabilityConfig.NetworkWatcherName

}

output "NetworkWatcherId" {

  value                   = module.ObservabilityConfig.NetworkWatcherId
  sensitive               = true
}

output "NetworkWatcherRGName" {

  value                   = module.ObservabilityConfig.NetworkWatcherRGName
}

##############################################################
#Azure Security Center Output

output "ASCTier" {

  value                   = module.ObservabilityConfig.ASCTier
}

output "ASCId" {

  value                   = module.ObservabilityConfig.ASCId
  sensitive               = true
}
/*
output "ASCContact" {

  value                   = module.ObservabilityConfig.ASCContact
}
*/
##############################################################
#Action Group Output

output "DefaultSubActionGroupId" {

  value                   = module.ObservabilityConfig.DefaultSubActionGroupId
  sensitive               = true
}

output "DefaultSubActionGroupName" {

  value                   = module.ObservabilityConfig.DefaultSubActionGroupName
}

output "DefaultSubActionGroupEmailReceiver" {

  value                   = module.ObservabilityConfig.DefaultSubActionGroupEmailReceiver
}

##############################################################
#Service health Alerts Output

output "ServiceHealthAlertName" {

  value                   = module.ObservabilityConfig.ServiceHealthAlertName
}

output "ServiceHealthAlertId" {

  value                   = module.ObservabilityConfig.ServiceHealthAlertId
  sensitive               = true

}

output "ServiceHealthAlertCriteria" {

  value                   = module.ObservabilityConfig.ServiceHealthAlertCriteria
}

######################################################################
# Key Vault Output

output "KeyVault_FullKVOutput" {
  value             = module.KeyVault.FullKVOutput
  sensitive         = true
}

output "KeyVault_Id" {
  value             = module.KeyVault.Id
  sensitive         = true
}

output "KeyVault_Name" {
  value             = module.KeyVault.Name
  sensitive         = false

}

output "KeyVault_Location" {
  value             = module.KeyVault.Location
  sensitive         = false

}

output "KeyVault_RG" {
  value             = module.KeyVault.RG
  sensitive         = false

}

output "KeyVault_SKU" {
  value             = module.KeyVault.SKU
  sensitive         = false
}

output "KeyVault_TenantId" {
  value             = module.KeyVault.TenantId
  sensitive         = true
}

output "KeyVault_URI" {
  value             = module.KeyVault.URI
  sensitive         = true
}


output "KeyVault_KeyVault_enabled_for_disk_encryption" {
  value             = module.KeyVault.KeyVault_enabled_for_disk_encryption
  sensitive         = false
}

output "KeyVault_KeyVault_enabled_for_template_deployment" {
  value             = module.KeyVault.KeyVault_enabled_for_template_deployment
  sensitive         = false
}

######################################################################
# Key Vault Access Policy for TF sp

output "KeyVaultAccessPolicyTF_Id" {
  value             = module.KeyVaultAccessPolicyTF.Id
  sensitive         = true
}

output "KeyVaultAccessPolicyTF_KeyVaultId" {
  value             = module.KeyVaultAccessPolicyTF.KeyVaultId
  sensitive         = true
}

output "KeyVaultAccessPolicyTF_KeyVaultAcccessPolicyFullOutput" {
  value             = module.KeyVaultAccessPolicyTF.KeyVaultAcccessPolicyFullOutput
  sensitive         = true
}

