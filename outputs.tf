output "resource_group_name" {
  description = "Name of the deployed resource group."
  value       = azurerm_resource_group.main.name
}

output "workbook_resource_id" {
  description = "ARM resource ID of the Azure Monitor Workbook."
  value       = azurerm_application_insights_workbook.arc_dashboard.id
}

output "workbook_portal_url" {
  description = "Direct URL to open the workbook in the Azure Portal."
  value       = "https://portal.azure.com/#resource${azurerm_application_insights_workbook.arc_dashboard.id}"
}
