variable "region" {
  type = string

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

}
variable "server-name" {
  type = string

}