###################################################################################
################################### MySQL DB ######################################
###################################################################################



# MySQL databases
resource "azurerm_mysql_database" "MySQLDB" {
  count                                       = length(var.MySQLDbList)
  name                                        = "${element(var.MySQLDbList,count.index)}" 
  resource_group_name                         = var.RGName
  server_name                                 = var.MySQLServerName
  charset                                     = var.MySQLDbCharset
  collation                                   = var.MySQLDbCollation
}

