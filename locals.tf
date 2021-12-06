locals {
  license = var.esxi_version == 7 ? random_shuffle.esxi_7_license.result.0 : random_shuffle.esxi_6_license.result.0
  fqdn    = join(".", [var.hostname, var.domain])
}
