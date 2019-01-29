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



resource "docker_image" "id" {

 name = "${var.image}"
}

resource "docker_container" "container_id" {
 name = "${var.container_name}"
 image = "${docker_image.id.latest}"
 ports {
   internal = "${var.int_port}"
   external = "${var.ext_port}"
 }
}

output "IP Address" {

 value =  "${docker_container.container_id.ip_address}"
}

output " ContainerName" {

 value = "${docker_container.container_id.name}"
}
