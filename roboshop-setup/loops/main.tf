resource "null_resource" "nothing" {
  count = length(var.d1)

}
variable "d1" {
  default = ["apple","banana"]
}