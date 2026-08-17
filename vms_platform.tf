### Оставляем только нужные переменные

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Семейство образа"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "Зона доступности для db-VM"
}

### Новая map-переменная для ресурсов ВМ
variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    preemptible   = bool
    platform_id   = string
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 20
      preemptible   = true
      platform_id   = "standard-v3"
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      preemptible   = true
      platform_id   = "standard-v3"
    }
  }
}

### Общая metadata для всех ВМ
variable "metadata" {
  type = map(string)
  default = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICizhr4H5S0evRmcAIDgiJ2KGITVnBVIpqb+1YsguYmE ubuntu"
  }
}

### ===== Закомментированные старые переменные =====

# variable "vm_web_name" {
#   type        = string
#   default     = "netology-develop-platform-web"
#   description = "Имя ВМ"
# }

# variable "vm_web_platform_id" {
#   type        = string
#   default     = "standard-v3"
#   description = "Platform ID"
# }

# variable "vm_web_cores" {
#   type        = number
#   default     = 2
#   description = "Количество vCPU"
# }

# variable "vm_web_memory" {
#   type        = number
#   default     = 1
#   description = "Объём RAM (ГБ)"
# }

# variable "vm_web_core_fraction" {
#   type        = number
#   default     = 20
#   description = "Гарантированная доля vCPU (%)"
# }

# variable "vm_web_preemptible" {
#   type        = bool
#   default     = true
#   description = "Preemptible instance"
# }

# variable "vm_db_name" {
#   type        = string
#   default     = "netology-develop-platform-db"
#   description = "Имя ВМ"
# }

# variable "vm_db_platform_id" {
#   type        = string
#   default     = "standard-v3"
#   description = "Platform ID"
# }

# variable "vm_db_cores" {
#   type        = number
#   default     = 2
#   description = "Количество vCPU"
# }

# variable "vm_db_memory" {
#   type        = number
#   default     = 2
#   description = "Объём RAM (ГБ)"
# }

# variable "vm_db_core_fraction" {
#   type        = number
#   default     = 20
#   description = "Гарантированная доля vCPU (%)"
# }

# variable "vm_db_preemptible" {
#   type        = bool
#   default     = true
#   description = "Preemptible instance"
# }