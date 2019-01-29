output "IP Address" {
 value =  "${docker_container.container_id.ip_address}"
}
output " ContainerName" {
 value = "${docker_container.container_id.name}"
}
