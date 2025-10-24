module "dev" {
  source = "../modules"

  # Change 0 to 1 and open a pull request to trigger Terrateam
  null_resource_count = 1
}

resource "null_resource" "drift" {
  count = 2

  provisioner "local-exec" {
    command = "echo 'DRIFT DRIFT DRIIIIIIIFT!!!'"
  }
}
