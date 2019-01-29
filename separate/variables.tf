variable "container_name" {
  description = "enter the docker container name"
  default = "blog"
}
variable "image" {
 description = "enter the container image"
 default = "ghost:latest"
}
variable "int_port" {
  description = "enter the docker internal port number"
  default = "2368"

}
variable "ext_port" {
  description = " enter the container external port number"
  default = "80"
}

