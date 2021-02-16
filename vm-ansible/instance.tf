resource "aws_instance" "server-ubuntu" {
  ami                     = var.AWS_AMIS[var.AWS_REGION]
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg-0bb6689aa41b455bd", "sg-02c36909d5234b1b9", "sg-04c7219ef6b9a6e1d"]
  key_name                = "jcde-key"

  tags = {
    Name = "Ubuntu-1"
  }
}

resource "aws_instance" "server-redhat" {
  ami                     = "ami-0f86a70488991335e"
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg-0bb6689aa41b455bd", "sg-02c36909d5234b1b9"]
  key_name                = "jcde-key"

  tags = {
    Name = "redhat-1"
  }
}

output "ip-ubuntu" {
  value = aws_instance.server-ubuntu.public_ip
}

output "ip-redhat" {
  value = aws_instance.server-redhat.public_ip
}

