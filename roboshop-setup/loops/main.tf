resource "null_resource" "nothing" {
  for_each = var.d1

}
variable "d1" {
  default = {
    apple = {
      fruit = "apple"
      count = 3
    },
    banana = {
      fruit = "banana"
      count = 30
    }
  }
}