variable "name" {
  description = "commone name to be used"
  default     = "kln"
  type        = string
}

variable "location" {
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created"
  default     = "West Europe"
  type        = string
}
