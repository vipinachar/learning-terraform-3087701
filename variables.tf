variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owner for ami"

  type = object({
    name  = string 
    owner = string 
  })

  default = {
  values = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
  owner  = "979382823631"
  }
}

variable "environment" {
  description = "development environament"
  type = object({
    name           = string 
    network_prefix = string
  })

  default = {
  name           = "dev"
  network_prefix = "10.0"
  }
}



variable "min_size" {
    description = "Minimum number fo instance for ASG"
    default = 1 
}

variable "max_size" {
    description = "Maximum number of instance for ASG"
    default = 2
}


