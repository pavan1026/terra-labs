variable "AWS_REGION" {
  default = "eu-west-2"
}

variable "AWS_PROFILE" {
  default = "terraform"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "/Users/pavankumarreddyganapathireddyrajeev/Desktop/terraform/lab7/keys/key-for-demo.pub"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "/Users/pavankumarreddyganapathireddyrajeev/Desktop/terraform/lab7/keys/key-for-demo"
}
variable "AMIS" {
  type = map(string)
  default = {
    eu-west-1 = "ami-0e52b5f0b50d5c811" # EU Ireland
    eu-west-2 = "ami-082f73b60cd9b99b2" # EU London
    us-east-1 = "mi-00d4e9ff62bc40e03"  # US N.virginia
  }
}