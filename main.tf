resource "google_healthcare_dicom_store" "healthcare_dicom_stores" {
  for_each = var.healthcare_dicom_stores

  dataset         = each.value.dataset
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  labels          = each.value.labels

  dynamic "notification_config" {
    for_each = each.value.notification_config != null ? [each.value.notification_config] : []
    content {
      pubsub_topic         = notification_config.value.pubsub_topic
      send_for_bulk_import = notification_config.value.send_for_bulk_import
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

