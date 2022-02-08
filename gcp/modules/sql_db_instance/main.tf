resource "google_sql_database_instance" "db" {
  name             = var.db_name
  database_version = var.db_version

  settings {
    tier        = var.db_tier
    user_labels = var.db_labels

    backup_configuration {
      binary_log_enabled             = backup_configuration.value["binary_log_enabled"]
      enabled                        = backup_configuration.value["enabled"]
      point_in_time_recovery_enabled = backup_configuration.value["point_in_time_recovery_enabled"]
      start_time                     = backup_configuration.value["start_time"]
    }
    database_flags {
      name  = "skip_show_database"
      value = "on"
    }
    ip_configuration {
      ipv4_enabled = ip_configuration.value.ipv4_enabled
      require_ssl  = ip_configuration.value.require_ssl

      authorized_networks {
        name  = net.value.name
        value = net.value.value
      }
    }
  }
}


