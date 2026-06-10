# testing CI/CD pipeline
locals {
  common_tags = {
    Project     = "Project2"
    Environment = "production"
    StudentName = var.student_name
  }
}

# ── Resource Group ────────────────────────────────────────────────────────────
resource "azurerm_resource_group" "main" {
  name     = "${var.student_name}-proj2-aci-rg"
  location = var.location
  tags     = local.common_tags
}

# ── Azure Container Instance ──────────────────────────────────────────────────
resource "azurerm_container_group" "app" {
  name                = "${var.student_name}-proj2-aci"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  ip_address_type     = "Public"
  dns_name_label      = "${var.student_name}-proj2-app" # → <label>.eastus.azurecontainer.io
  os_type             = "Linux"
  tags                = local.common_tags

  container {
    name   = "${var.student_name}-web"
    image  = var.docker_image
    cpu    = var.container_cpu
    memory = var.container_memory

    ports {
      port     = 80
      protocol = "TCP"
    }
  }
}
