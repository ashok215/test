# Variable Section <-- move this later 

variable "ami" { default = "ami-0e38b48473ea57778"}
variable "instance_type" { default = "t2.micro"}
variable "count1" { default = "1"}
variable "ip_address" { default = "true"}
variable "volume_size" { default = "35"}
variable "name" { default = "HGS_DEMO"}
variable "project" { default = "terraform"}
variable "environment" { default = "dev"}
variable "region" { default = "eu-east-2"}