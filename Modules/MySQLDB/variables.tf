

######################################################
####################  MySQL  ####################
######################################################

# MySQL databases

variable "MySQLDbList" {
  type        = list(string)
  description = "List of MySQL databases names."
  default     = ["defaultdbrws"]
}

variable "RGName" {
  type        = string
  description = "The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created."

}

variable "MySQLDbCharset" {
  type        = string
  description = "Specifies the Charset for the MySQL Database, which needs to be a valid MySQL Charset. Changing this forces a new resource to be created."
  default     = "latin2"
}

variable "MySQLDbCollation" {
  type        = string
  description = "Specifies the Collation for the MySQL Database, which needs to be a valid MySQL Collation. Changing this forces a new resource to be created."
  default     = "latin2_general_ci"
}

variable "MySQLServerName" {
  type        = string
  description = "Specifies the name of the MySQL Server. Changing this forces a new resource to be created."

}



