variable "location" {
  default = "East US"
}

variable "admin_password" {
  type      = string
  sensitive = true
}
