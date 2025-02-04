variable "cluster_name" {
    description = "The name of the EKS cluster"
    type        = string
    default = "telemetry_cluster"
  
}
#variable "role_arn" {
#    description = "The ARN of the IAM role to use for the EKS cluster"
#    type        = string
#}

#variable "subnet_ids" {
#    description = "A list of subnet IDs for the EKS cluster"
#    type        = list(string)
#}
variable "cluster_version" {
    description = "The Kubernetes version for the EKS cluster"
    type        = string
    default = "1.31"
}