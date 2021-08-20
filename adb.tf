# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# adb.tf
#
# Purpose: The following script defines the logic to create an Autonomous Database Transactional.
# Registry: https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/database_autonomous_database
            

resource "random_string" "ADBAdminPassword" {
  length      = 16
  min_numeric = 1
  min_lower   = 1
  min_upper   = 1
  min_special = 1
}

resource "oci_database_autonomous_database" "AutonomousDatabase" {
  #Required
  admin_password           = random_string.ADBAdminPassword.result
  compartment_id           = local.compartment_id
  cpu_core_count           = var.cpu_core_count
  data_storage_size_in_tbs = var.data_storage_size_in_tbs
  db_name                  = var.db_name
  #Optional
  db_version              = var.database_version
  db_workload             = var.adb_workload
  display_name            = var.display_name
  is_auto_scaling_enabled = var.is_auto_scaling_enabled
  license_model           = var.license_model
  is_data_guard_enabled   = var.is_data_guard_enabled
  is_dedicated            = var.is_dedicated
  nsg_ids                 = [local.nsg_id]
  subnet_id               = local.subnet_ocid
  whitelisted_ips         = var.whitelisted_ips
  private_endpoint_label  = var.private_endpoint_label
}
