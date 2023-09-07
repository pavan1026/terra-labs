# variable "AWS_ACCESS_KEY" {}
# variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "eu-west-2"
}
variable "AWS_PROFILE" {
  default = "terraform"
}
variable "AMIS" {
  type = map(string)
  default = {
    eu-west-1 = "ami-0e52b5f0b50d5c811" # EU Ireland
    eu-west-2 = "ami-0f3d9639a5674d559" # EU London
    us-east-1 = "mi-00d4e9ff62bc40e03"  # US N.virginia
  }
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "./key/key-for-demo.pub"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "./key/key-for-demo"
}
variable "INSTANCE_USERNAME" {
  default = "ec2-user"
}

variable "MYBUCKETNAME" {
  default = "devopsmonks"
}