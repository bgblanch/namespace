variable "name" {
    description     = "The resource name.  If empty, a random string of 12 characters is used"
    default         = ""
}

variable "namespace" {
    description     = "The namespace use for the terraform run"
    default         = ""
}

variable "separator" {
    description     = "The string separator that would be inserted between the name and namespace.  Typical usage examples are `_` or `-`"
    default         = ""
}