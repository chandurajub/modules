resource "aws_vpc_peering_connection" "peer" {
  peer_vpc_id   = "${var.manage_vpc}"
  vpc_id        = "${aws_vpc.vpc.id}"
  auto_accept   = true

  tags = {
    Name = "VPC Peering between foo and bar"
  }
}
