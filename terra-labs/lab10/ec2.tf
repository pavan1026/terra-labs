resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance-types-list[0]
  count         = 3
  tags = {
    Name = "HelloWorld-${count.index}"
  }
}