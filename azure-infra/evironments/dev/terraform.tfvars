
rgs = {

  rg_dev = {
    name       = "rg-surendra-dev"
    location   = "koreacentral"
    managed_by = "surendra"
  }

  rg_prod = {
    name       = "rg-surendra-prod"
    location   = "eastus"
    managed_by = "surendra"
  }
}


vnets = {

  vnet_dev = {
    name                = "vnet-surendra-dev"
    resource_group_name = "rg-surendra-dev"
    location            = "koreacentral"
    address_space       = ["10.10.0.0/16"]
  }

  vnet_prod = {
    name                = "vnet-surendra-prod"
    resource_group_name = "rg-surendra-prod"
    location            = "eastus"
    address_space       = ["10.20.0.0/16"]
  }
}


subnets = {

  subnet_dev = {
    name                 = "subnet-surendra-dev"
    resource_group_name  = "rg-surendra-dev"
    virtual_network_name = "vnet-surendra-dev"

    address_prefixes = ["10.10.1.0/24"]
  }

  subnet_prod = {
    name                 = "subnet-surendra-prod"
    resource_group_name  = "rg-surendra-prod"
    virtual_network_name = "vnet-surendra-prod"

    address_prefixes = ["10.20.1.0/24"]
  }
}


pips = {

  pip_dev = {
    name                = "pip-surendra-dev"
    resource_group_name = "rg-surendra-dev"
    location            = "koreacentral"
    allocation_method   = "Static"
  }

  pip_prod = {
    name                = "pip-surendra-prod"
    resource_group_name = "rg-surendra-prod"
    location            = "eastus"
    allocation_method   = "Static"
  }
}


nics = {

  nic_dev = {
    nic_name             = "nic-surendra-dev"
    location             = "koreacentral"
    resource_group_name  = "rg-surendra-dev"
    subnet_name          = "subnet-surendra-dev"
    virtual_network_name = "vnet-surendra-dev"
    public_ip_name       = "pip-surendra-dev"
  }

  nic_prod = {
    nic_name             = "nic-surendra-prod"
    location             = "eastus"
    resource_group_name  = "rg-surendra-prod"
    subnet_name          = "subnet-surendra-prod"
    virtual_network_name = "vnet-surendra-prod"
    public_ip_name       = "pip-surendra-prod"
  }
}


vms = {

  vm_dev = {
    vm_name             = "vm-surendra-dev"
    location            = "koreacentral"
    resource_group_name = "rg-surendra-dev"
    nic_name            = "nic-surendra-dev"
    size                = "Standard_D2s_v3"
    admin_username      = "surendra"
    admin_password      = "surendra@1234"
  }

  vm_prod = {
    vm_name             = "vm-surendra-prod"
    location            = "eastus"
    resource_group_name = "rg-surendra-prod"
    nic_name            = "nic-surendra-prod"
    size                = "Standard_D2s_v3"
    admin_username      = "surendra"
    admin_password      = "surendra@1234"
  }
}
