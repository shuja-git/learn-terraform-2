variable "d1" {
  default = [
    {
      course_name = "aws"
      trainer_name = "shuja"
    },
    {
      course_name = "devops"
      trainer_name = "Mohd"
    }
  ]
}
output "d1-val" {
  value = var.d1[1].course_name
}