output "subnetfront_id" {
    value = azurerm_subnet.subnetfront.id
    description = "subnetfront id"
}

output "subnetservices_id" {
    value = azurerm_subnet.subnetservices.id
    description = "subnetservices id"
}