module "resource_group_name" {
    source = "../azurerm_resource_group"
    rgs  = var.rgdetails
}

module "azurerm_virtual_network" {
  depends_on = [ module.resource_group_name ]
  source = "../azurerm_virtual_network"
  vnet = var.vnetdetails
}
module "azurerm_subnet" {
    depends_on = [ module.azurerm_virtual_network ]
    source = "../azurerm_subnet"
     subnet = var.subnetdetails
}


module "azurerm_VM_NIC_PIP" {
    depends_on = [ module.resource_group_name,module.azurerm_subnet,]
    source = "../azurerm_VM_NIC_PIP"
     vms = var.vmdetails
}
