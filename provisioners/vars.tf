variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t2.micro"
    },
    cart = {
      name = "cart"
      type = "t2.micro"
    }
  }
}