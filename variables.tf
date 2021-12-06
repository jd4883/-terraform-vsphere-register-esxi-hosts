variable "cluster_id" { default = null }
variable "datacenter_id" { default = null }
variable "hostname" { type = string }
variable "network_interfaces" { type = list(string) }
variable "password" { type = string }

variable "esxi-7-license-name" {
  type        = list(string)
  description = "This is the default value to check for when assigning license keys; my design uses hosts with ESXI 6 and with 7 so I created values to account for both that can be remapped if preferred to align to licenses you have to work with"
  default = [
    "vSphere 7 Enterprise Plus with Add-on for Kubernetes"
  ]
}

variable "esxi-6-license-name" {
  type        = list(string)
  description = "This is the default value to check for when assigning license keys; my design uses hosts with ESXI 6 and with 7 so I created values to account for both that can be remapped if preferred to align to licenses you have to work with"
  default = [
    "VMware vSphere with Operations Management 6 Enterprise Plus for vSphere",
    "VMware vSphere 6 Enterprise Plus"
  ]
}

variable "esxi_version" {
  type        = number
  default     = 7
  description = "Version number to use; I only wrote this to support 6 and 7 but it wouldn't be impossible to make more sophisticated logic"
}

variable "domain" {
  type    = string
  default = "vsphere.local"
}

variable "licenses" {
  type = map(string)
}

variable "connected" {
  type    = bool
  default = true
}

variable "username" {
  type    = string
  default = "root"
}

variable "force" {
  type    = bool
  default = false
}

variable "port" {
  type    = number
  default = 443
}

variable "insecure" {
  type    = bool
  default = true
}
