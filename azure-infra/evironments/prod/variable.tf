variable "rgs" {
  type = map(object({
    name       = string
    location   = string
    managed_by = string
  }))
}

variable "vnets" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
}

variable "subnets" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "pips" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

variable "nics" {
  type = map(object({
    nic_name             = string
    location             = string
    resource_group_name  = string
    subnet_name          = string
    virtual_network_name = string
    public_ip_name       = string
  }))
}

variable "vms" {
  type = map(object({
    vm_name             = string
    location            = string
    resource_group_name = string
    nic_name            = string
    size                = string
    admin_username      = string
    admin_password      = string
  }))
}

