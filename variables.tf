# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# variables.tf 
#
# Purpose: The following file declares all variables used in this backend repository

/********** Provider Variables NOT OVERLOADABLE **********/
variable "region" {
  description = "Target region where artifacts are going to be created"
}

variable "tenancy_ocid" {
  description = "OCID of tenancy"
}

variable "user_ocid" {
  description = "User OCID in tenancy. Currently hardcoded to user denny.alquinta@oracle.com"
}

variable "fingerprint" {
  description = "API Key Fingerprint for user_ocid derived from public API Key imported in OCI User config"
}

variable "private_key_path" {
  description = "Private Key Absolute path location where terraform is executed"

}
/********** Provider Variables NOT OVERLOADABLE **********/

/********** Brick Variables **********/

/********** ADB Variables **********/
variable "adb_workload" {
  description = "A filter to return only autonomous database resources that match the specified workload type. Values may vary between OLTP and DW"
  default     = "OLTP"
}

variable "database_version" {
  description = "A valid Oracle Database Version for Autonomous Database"
  default     = "19c"
}

variable "cpu_core_count" {
  description = "(Required) (Updatable) The number of OCPU cores to be made available to the database. This input is ignored for Always Free resources."
  default     = "1"
}

variable "data_storage_size_in_tbs" {
  description = "(Required) (Updatable) The size, in terabytes, of the data volume that will be created and attached to the database. This storage can later be scaled up if needed. This input is ignored for Always Free resources."
  default     = "1"
}

variable "db_name" {
  description = "(Required) The database name. The name must begin with an alphabetic character and can contain a maximum of 14 alphanumeric characters. Special characters are not permitted. The database name must be unique in the tenancy."
}

variable "display_name" {
  description = "(Optional) (Updatable) The user-friendly name for the Autonomous Database. The name does not have to be unique."
}

variable "is_auto_scaling_enabled" {
  description = "(Optional) (Updatable) Indicates if auto scaling is enabled for the Autonomous Database OCPU core count. The default value is FALSE. Note that auto scaling is available for databases on shared Exadata infrastructure only."
  default     = "false"
}

variable "license_model" {
  description = "(Optional) (Updatable) The Oracle license model that applies to the Oracle Autonomous Database. Note that when provisioning an Autonomous Database on dedicated Exadata infrastructure, this attribute must be null because the attribute is already set at the Autonomous Exadata Infrastructure level. When using shared Exadata infrastructure, if a value is not specified, the system will supply the value of BRING_YOUR_OWN_LICENSE."
  default     = null
}

variable "whitelisted_ips" {
  description = "(Optional) (Updatable) The client IP access control list (ACL). This feature is available for databases on shared Exadata infrastructure only. Only clients connecting from an IP address included in the ACL may access the Autonomous Database instance. This is an array of CIDR (Classless Inter-Domain Routing) notations for a subnet or VCN OCID. "
  default     = []
}

variable "is_data_guard_enabled" {
  description = "Indicates whether the Autonomous Database has Data Guard enabled."
  default     = false
}

variable "is_dedicated" {
  description = "True if the database is on dedicated Exadata infrastructure."
  default     = false
}

variable "adb_nsg_name" {
  description = "Display Name of Network Security Group associated with ADB"
}

variable "private_endpoint_label" {
  description = "The private endpoint label for the resource."
}

variable "adb_instance_compartment_name" {
  description = "Defines the compartment name where the infrastructure will be created"
  default     = ""
}


variable "adb_network_compartment_name" {
  description = "Defines the compartment where the Network is currently located"
}
/********** ADB Variables **********/

/********** Datasource and Subnet Lookup related variables **********/
variable "network_subnet_name" {
  description = "Defines the subnet display name where this resource will be created at"
}

variable "vcn_display_name" {
  description = "VCN Display name to execute lookup"
}
/********** Datasource and Subnet Lookup related variables **********/

/********** Brick Variables **********/