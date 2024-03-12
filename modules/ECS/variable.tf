# variables.tf

variable "aws_region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "ap-south-1" # Change this to your desired AWS region
}

variable "ecs_cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
  default     = "my-fargate-cluster" # Change this to your desired cluster name
}

variable "task_family" {
  description = "The family name of the ECS task."
  type        = string
  default     = "my-task-family" # Change this to your desired task family name
}

variable "docker_image" {
  description = "The Docker image for the ECS task."
  type        = string
  default     = "nginx:latest" # Change this to your desired Docker image
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the ECS Fargate task."
  type        = list(string)
  default     = ["subnet-xxxxxxxxxxxxxx"] # Replace with your subnet IDs
}

variable "security_group_ids" {
  description = "The list of security group IDs for the ECS Fargate task."
  type        = list(string)
  default     = ["sg-xxxxxxxxxxxxxx"] # Replace with your security group IDs
}
