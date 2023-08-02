resource "null_resource" "db_deployment" {
  triggers = {
    db_name     = var.db_name
    db_username = var.db_username
    db_password = var.db_password
  }

  provisioner "local-exec" {
    command = "docker run -d -e MYSQL_DATABASE=${var.db_name} -e MYSQL_USER=${var.db_username} -e MYSQL_PASSWORD=${var.db_password} -e MYSQL_ROOT_PASSWORD=${var.db_password} --name ${var.db_name} mysql:latest"
  }
}

resource "null_resource" "db_cleanup" {
  triggers = {
    db_name = var.db_name
  }

  provisioner "local-exec" {
    when    = "destroy"
    command = "docker rm -f ${var.db_name}"
  }
}
