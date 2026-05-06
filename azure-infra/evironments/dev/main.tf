module "resource_group" {
    source = "../../modules/resource_group"
    rgs = var.rgs
}

module "virtual_network" {
    depends_on = [module.resource_group]    
    source = "../../modules/virtual_network"
    vnets = var.vnets
}

module "subnet" {
    depends_on = [module.resource_group, module.virtual_network]
    source = "../../modules/subnet"
    subnets = var.subnets
}

module "public_ip" {
    depends_on = [module.resource_group]
    source = "../../modules/public_ip"
    pips = var.pips
}

module "nic" {
    depends_on = [module.resource_group, module.virtual_network, module.subnet, module.public_ip]
    source = "../../modules/network_interface"
    nics = var.nics
   
}

module "virtual_machine" {
    depends_on = [module.resource_group, module.virtual_network, module.subnet, module.public_ip, module.nic]
    source = "../../modules/virtual_machine"
    vms = var.vms

}
