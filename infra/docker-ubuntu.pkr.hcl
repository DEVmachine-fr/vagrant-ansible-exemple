packer {
  required_plugins {
    ansible = {
      version = "~> 1"
      source = "github.com/hashicorp/ansible"
    }
    docker = {
      version = ">= 1.0.8"
      source  = "github.com/hashicorp/docker"
    }
  }
}

variable "topping" {
  type    = string
  default = "mushroom"
}

source "docker" "ubuntu" {
  # image  = "ubuntu:jammy"
  image  = "ubuntu/python:3.10-22.04_stable"
  commit = true
}

build {
  sources = [
    "source.docker.ubuntu"
  ]

  provisioner "ansible" {
    playbook_file   = "./playbook.yml"
    galaxy_file     = "./requirements.yml"
    extra_arguments = ["--extra-vars", "\"pizza_toppings=${var.topping}\""]
  }
}
