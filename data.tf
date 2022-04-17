data "vsphere_host_thumbprint" "thumbprint" {
  address  = var.ip
  port     = var.port
  insecure = var.insecure
}
