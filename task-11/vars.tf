variable "app_port" {
  default = 80
}

variable "files" {
  default = [
    "provider.tf" ,
    "static_dep.tf" ,
    "static_srv.tf" ,
    "terraform.tfvars" ,
    "vars.tf",
    "locals.tf",
    "github.tf"
  ]
}

variable "node_port" {}
variable "image_name" {}
variable "app_name" {}
variable "replicas_count" {}
variable "srv_type" {}
variable "policy" {}
variable "id_seconds" {}
variable "t_seconds" {}
variable "probe_path" {}
variable "path" {}
variable "token" {}
