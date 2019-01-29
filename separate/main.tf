
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


