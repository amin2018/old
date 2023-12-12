resource "google_sql_database_instance" "cloud_sql_instance" {
  name             = var.instance_name
  region           = var.region
  database_version = var.database_version

  settings {
    tier = var.tier

    backup_configuration {
      enabled = var.backup_enabled
    }

    ip_configuration {
      ipv4_enabled    = var.ipv4_enabled
      private_network = var.private_network
    }
  }
}
