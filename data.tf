data "vsphere_host_thumbprint" "thumbprint" {
  address  = join(".", [var.hostname, var.domain])
  port     = var.port
  insecure = var.insecure
}
