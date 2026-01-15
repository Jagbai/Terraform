variable "subnet_id" {
  description = "List of subnet IDs for the EKS cluster"
  type        = string  
}

variable "instance_type" {
    description = "Type of instance"
    type        = string
    default     = "t3.micro"
  
}