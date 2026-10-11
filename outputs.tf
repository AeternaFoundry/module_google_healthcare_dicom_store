output "healthcare_dicom_stores_id" {
  description = "Map of id values across all healthcare_dicom_stores, keyed the same as var.healthcare_dicom_stores except keys with no id are omitted"
  value       = { for k, v in google_healthcare_dicom_store.healthcare_dicom_stores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "healthcare_dicom_stores_dataset" {
  description = "Map of dataset values across all healthcare_dicom_stores, keyed the same as var.healthcare_dicom_stores except keys with no dataset are omitted"
  value       = { for k, v in google_healthcare_dicom_store.healthcare_dicom_stores : k => v.dataset if v.dataset != null && length(v.dataset) > 0 }
}
output "healthcare_dicom_stores_deletion_policy" {
  description = "Map of deletion_policy values across all healthcare_dicom_stores, keyed the same as var.healthcare_dicom_stores except keys with no deletion_policy are omitted"
  value       = { for k, v in google_healthcare_dicom_store.healthcare_dicom_stores : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "healthcare_dicom_stores_effective_labels" {
  description = "Map of effective_labels values across all healthcare_dicom_stores, keyed the same as var.healthcare_dicom_stores except keys with no effective_labels are omitted"
  value       = { for k, v in google_healthcare_dicom_store.healthcare_dicom_stores : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "healthcare_dicom_stores_labels" {
  description = "Map of labels values across all healthcare_dicom_stores, keyed the same as var.healthcare_dicom_stores except keys with no labels are omitted"
  value       = { for k, v in google_healthcare_dicom_store.healthcare_dicom_stores : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "healthcare_dicom_stores_name" {
  description = "Map of name values across all healthcare_dicom_stores, keyed the same as var.healthcare_dicom_stores except keys with no name are omitted"
  value       = { for k, v in google_healthcare_dicom_store.healthcare_dicom_stores : k => v.name if v.name != null && length(v.name) > 0 }
}
output "healthcare_dicom_stores_notification_config" {
  description = "Map of notification_config values across all healthcare_dicom_stores, keyed the same as var.healthcare_dicom_stores except keys with no notification_config are omitted"
  value       = { for k, v in google_healthcare_dicom_store.healthcare_dicom_stores : k => one(v.notification_config) if v.notification_config != null && length(v.notification_config) > 0 }
}
output "healthcare_dicom_stores_self_link" {
  description = "Map of self_link values across all healthcare_dicom_stores, keyed the same as var.healthcare_dicom_stores except keys with no self_link are omitted"
  value       = { for k, v in google_healthcare_dicom_store.healthcare_dicom_stores : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "healthcare_dicom_stores_terraform_labels" {
  description = "Map of terraform_labels values across all healthcare_dicom_stores, keyed the same as var.healthcare_dicom_stores except keys with no terraform_labels are omitted"
  value       = { for k, v in google_healthcare_dicom_store.healthcare_dicom_stores : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

