variable "instance-types-list" {
  description = "instance types for aws"
  type        = list(string)
  default     = ["t2.micro", "t2.small", "t2.medium"]
}

variable "instance-types-map" {
  description = "instance types for aws using map"
  type        = map(string)
  default = {
    dev  = "t2.micro"
    qa   = "t2.small"
    prod = "t2.medium"
  }
}
variable "profile" {
  default = "terraform"
}
variable "region" {
  default = "eu-west-2"

}