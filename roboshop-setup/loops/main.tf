resource "null_resource" "nothing" {
  count = var.d1
}
variable "d1" {
  default = 5
}