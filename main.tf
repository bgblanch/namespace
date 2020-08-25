locals {
    name        = "${length(trimspace(var.name)) > 0 ? trimspace(var.name) : module.random_name.result}"
    namespace   = "${length(trimspace(var.namespace)) > 0 ? trimspace(var.namespace) : ""}"
    result      = "${format ("%s%s%s", local.name, var.separator, local.namespace)}"
}

module "random_name" {
    source      = "github.com/bgblanch/random_name"
    prefix      = ""
    length      = 12
    allow_numbers   = true
    allow_special   = false
    allow_upper     = false
}