resource "random_shuffle" "esxi_7_license" {
  input        = [for k, v in var.licenses : k if contains(var.esxi-7-license-name, v)]
  result_count = 1
}

resource "random_shuffle" "esxi_6_license" {
  input        = [for k, v in var.licenses : k if contains(var.esxi-6-license-name, v)]
  result_count = 1
}
resource "vsphere_host" "esxi" {
  connected  = var.connected
  hostname   = var.ip == "" ? local.fqdn : var.ip
  license    = local.license
  password   = var.password
  thumbprint = sensitive(data.vsphere_host_thumbprint.thumbprint.id)
  datacenter = var.cluster_id != "" ? "" : var.datacenter_id
  cluster    = var.cluster_id != "" ? var.cluster_id : ""
  username   = var.username
  force      = var.force
  lifecycle { ignore_changes = [thumbprint] }
}
