resource "docker_image" "id" {

 name = "ghost:latest"
}

resource "docker_container" "container_id" {
 name = "blog"
 image = "${docker_image.id.latest}"
 ports {
   internal = "2368"
   external = "80"
 }
}

output "IP Address" {

 value =  "${docker_container.container_id.ip_address}"
}

output " ContainerName" {

 value = "${docker_container.container_id.name}"
}
