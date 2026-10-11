variable "healthcare_dicom_stores" {
  description = <<EOT
Map of healthcare_dicom_stores, attributes below
Required:
    - dataset
    - name
Optional:
    - deletion_policy
    - labels
    - notification_config (block):
        - pubsub_topic (required)
        - send_for_bulk_import (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    dataset         = string
    name            = string
    deletion_policy = optional(string)
    labels          = optional(map(string))
    notification_config = optional(object({
      pubsub_topic         = string
      send_for_bulk_import = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

