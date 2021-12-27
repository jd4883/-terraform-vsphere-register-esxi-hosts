output "host" { value = merge(vsphere_host.esxi, { fqdn = local.fqdn }) }
output "network_interfaces" { value = var.network_interfaces }
