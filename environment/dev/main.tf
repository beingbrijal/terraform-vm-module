module "rg" {
  source = "../../module/rg"
  rg     = var.rg
}
module "vnet" {
  depends_on = [module.rg]
  source     = "../../module/vnet"
  vnet       = var.vnet
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../../module/subnet"
  subnet     = var.subnet
}
module "nsg" {
  depends_on = [module.subnet]
  source     = "../../module/nsg"
  nsg        = var.nsg
}
module "pip" {
  depends_on = [module.nsg]
  source     = "../../module/pip"
  pip        = var.pip
}
module "nic" {
  depends_on = [module.pip]
  source     = "../../module/nic"
  nic        = var.nic
}
module "vm" {
  depends_on = [module.nic]
  source     = "../../module/vm"
  vm         = var.vm

}