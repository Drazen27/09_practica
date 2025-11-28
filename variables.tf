variable "location" {
  description = "The location where resources will be deployed."
  type        = string
  default     = "eastus"
}
variable "name" {
  description = "Nombre generico"
  type        = string
  default     = "drazen"
}
variable "common_tags" {
  description = "Common tags"
  type        = map(string)
}
