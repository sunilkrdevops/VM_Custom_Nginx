rgdetails =  {
    rg1={
  name     = "rg_sunil"
  location = "Central India"
    }
}

vnetdetails ={
        vnet1={  
        name                = "vnet_sunil"
        address_space       = ["10.0.0.0/16"]
        location            = "central India"
        resource_group_name = "rg_sunil"
        }
}

subnetdetails = {
    subnet1= {
        name                 = "frontend_subnet"
        resource_group_name  = "rg_sunil"
        virtual_network_name = "vnet_sunil"
        address_prefixes     = ["10.0.2.0/24"]
    }
    subnet2= {
        name                 = "backend_subnet"
        resource_group_name  = "rg_sunil"
        virtual_network_name = "vnet_sunil"
        address_prefixes     = ["10.0.3.0/24"]
    }
}

vmdetails = {
  vm1={
        nic_name         = "nic_frontend_vm"
        location     = "central India"
        rg_name      = "rg_sunil"
        nic_subnet_name  = "frontend_subnet"
        nic_vnet_name    = "vnet_sunil"
        pip_name         ="pip_frontend_vm"
        allocation_method = "Static"
        vm_name          = "frontend-vm"
        vm_size          ="Standard_D2s_v3"
        admin_username   = "devopsadmin"
        admin_password   = "Devops@123"

  }
  vm2={
        nic_name         = "nic_backend_vm"
        location     = "central India"
        rg_name      = "rg_sunil"
        nic_subnet_name  = "backend_subnet"
        nic_vnet_name    = "vnet_sunil"
        pip_name         ="pip_backend_vm"
        allocation_method   = "Static"
        vm_name          = "backend-vm"
        vm_size          ="Standard_D2s_v3"
        admin_username   = "devopsadmin"
        admin_password   = "Devops@123"
  }
}
