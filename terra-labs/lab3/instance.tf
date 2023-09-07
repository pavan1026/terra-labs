# Below resource will provision 
resource "aws_instance" "example" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = ["${aws_security_group.allow-ssh.id}"]

  # the public SSH key
  key_name = aws_key_pair.devopsmonks.key_name
}
terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "rajeevtestbucket1"
    dynamodb_table = "devopsmonks-terraform-state-lock"
    key            = "state-lock-storage.keypath"
    region         = "eu-west-2"
    profile        = "terraform"
    # access_key = "<aws_access_key>"
    # secret_key = "<aws_secret_key>"
  }
}