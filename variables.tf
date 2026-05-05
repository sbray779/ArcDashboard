variable "resource_group_name" {
  description = "Name of the resource group to deploy the workbook into."
  type        = string
  default     = "rg-arc-dashboard"
}

variable "location" {
  description = "Azure region for all resources."
  type        = string
  default     = "eastus"
}

variable "workbook_display_name" {
  description = "Display name shown in the Azure Portal for the workbook."
  type        = string
  default     = "Arc Servers Dashboard"
}

variable "tags" {
  description = "Tags to apply to all deployed resources."
  type        = map(string)
  default     = {}
}
