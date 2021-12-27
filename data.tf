data "vsphere_host_thumbprint" "thumbprint" {
  address  = var.hostname
  port     = var.port
  insecure = var.insecure
}
