resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id      = "${var.vpc_id}"
  //vpc_id      = "${local.vpc_id}"

  ingress {
    description = " from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [data.aws_vpc.vpc.cidr_block, data.aws_vpc.manage_vpc.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow ssh inbound traffic"
  vpc_id      = "${var.vpc_id}"
  //vpc_id      = "${local.vpc_id}"

  ingress {
    description = " from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_alltag"
  }
}
