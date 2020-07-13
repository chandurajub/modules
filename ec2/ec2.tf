/*
resource "aws_instance" "ec2" {
  ami = "ami-0c84a3e93390c29bc"
  instance_type = "t2.micro"
  subnet_id = element(local.private_sub,0)
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
}
resource "aws_instance" "ec21" {
  ami = "ami-0c84a3e93390c29bc"
  instance_type = "t2.micro"
  subnet_id = element(local.public_sub,0)
  vpc_security_group_ids = [aws_security_group.allow_all.id]
}
resource "aws_instance" "ec22" {
  ami = "ami-0c84a3e93390c29bc"
  instance_type = "t2.micro"
  subnet_id = element(local.public_sub,0)
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
}
resource "aws_instance" "ec23" {
  ami = "ami-0c84a3e93390c29bc"
  instance_type = "t2.micro"
  subnet_id = element(local.public_sub,0)
  vpc_security_group_ids = [aws_security_group.allow_all.id]
}
*/
resource "aws_instance" "ec2" {
  ami = "ami-0c84a3e93390c29bc"
  instance_type = "t2.micro"
  subnet_id = element(var.private_sub,0)
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
}
resource "aws_instance" "ec21" {
  ami = "ami-0c84a3e93390c29bc"
  instance_type = "t2.micro"
  subnet_id = element(var.public_sub,2)
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
}

