variable "panthera_debian_ami" {
  description = "The default ami lc"
  type        = string
  default     = "ami-0c7c4e3c6b4941f0f"
}

variable "max_asg_capacity" {
  description = "The default value max capacity"
  type        = number
  default     = 5
}

variable "min_asg_capacity" {
  description = "The defaultvalue min capacity"
  default     = 1
}

variable "vpc" {
  description = "The default VPC"
  type        = string
  default     = "vpc-0dbad0c8086a3a780"
}

variable "vpc_cidr" {
  description = "The default of the vpc cidr"
  type        = string
}

variable "tags" {
  description = "Default tags to apply to all resources."
  type        = map(any)
  default = {
    archUUID = "195559f7-657e-47c4-813c-1189bec022e0"
    env      = "DEV"
  }
}

variable "ami" {
  description = "The ami default of instance asg"
  type        = string
  default     = "ami-0c7c4e3c6b4941f0f"
}

