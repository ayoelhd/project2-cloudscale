variable "student_name" {
  description = "Your name – used in resource names and tags"
  type        = string
  default     = "ayoubelhaddad-mohamed-abdullah"
}

variable "location" {
  description = "Azure region to deploy resources into"
  type        = string
  default     = "spaincentral"
}

variable "docker_image" {
  description = "Full Docker Hub image reference (e.g. dockerhubusername/cloudscale-app:latest)"
  type        = string
  default     = "ayoelhd/cloudscale-app:latest"
}

variable "container_cpu" {
  description = "Number of CPU cores for the container"
  type        = number
  default     = 1
}

variable "container_memory" {
  description = "Memory in GB for the container"
  type        = number
  default     = 1.5
}
