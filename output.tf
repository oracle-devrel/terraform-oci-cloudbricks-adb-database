# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# output.tf
#
# Purpose: The following script defines the DBCS output when creation is completed

output "autonomous_database_admin_password" {
  description = "ADB Automated Password"
  value       = random_string.ADBAdminPassword.result
}

output "autonomous_databases" {
  description = "ADB generated Object"
  value       = oci_database_autonomous_database.AutonomousDatabase
  sensitive   = true
}
