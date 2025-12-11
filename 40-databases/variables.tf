variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_names" {
  
  default = [
    # database
    "mongodb", "redis", "mysql", "rabbitmq",
    # backend
    "catalogue", "user", "cart", "shipping", "payment",
    # frontend
    "frontend",
    # bastion
    "bastion",
    # frontend load balancer
    "frontend_lb",
    # backend ALB
    "backend_alb"
  ]
}

variable "zone_id" {
  default = "Z04936233JDYCWRJS57S7"
}

variable "domain_name" {
  default = "rakesh12.fun"
}
