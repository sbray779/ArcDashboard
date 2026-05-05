resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "random_uuid" "workbook_id" {}

resource "azurerm_application_insights_workbook" "arc_dashboard" {
  name                = random_uuid.workbook_id.result
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  display_name        = var.workbook_display_name
  data_json           = file("${path.module}/workbook/arc-dashboard.json")
  tags                = var.tags
}
