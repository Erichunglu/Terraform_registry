variable "region" {
  type = string
#  default = "us-east-1"
}
variable "instance-type" {
  type    = string
  default = "t3.micro"
}
variable "instance-count" {
  type    = number
  default = 1
}
variable "instance-az" {
  type = string
#  default = "us-east-1a"
}
variable "server-name" {
  type = string
#  default = "test-1"
}