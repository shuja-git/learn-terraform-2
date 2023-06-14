resource "null_resource" "nothing" {
  count = length(var.d1)
  name = var.d1[count.index]

}
variable "d1" {
  default = ["apple","banana"]
}