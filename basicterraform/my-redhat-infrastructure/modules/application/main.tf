resource "random_id" "app_suffix" {
  byte_length = 4
}

resource "null_resource" "app_deployment" {
  triggers = {
    app_name  = var.app_name
    app_port  = var.app_port
    random_id = random_id.app_suffix.hex
  }

  provisioner "local-exec" {
    command = "docker run -d -p ${var.app_port}:80 --name ${var.app_name}-${random_id.app_suffix.hex} nginx"
  }
}

resource "null_resource" "app_cleanup" {
  triggers = {
    app_name = var.app_name
  }

  provisioner "local-exec" {
    when    = "destroy"
    command = "docker rm -f ${var.app_name}-${random_id.app_suffix.hex}"
  }
}
