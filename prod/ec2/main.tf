module "ec2" {
  source = "../ec2"
  private_sub= data.terraform_remote_state.vpc.outputs.private_sub
  public_sub = data.terraform_remote_state.vpc.outputs.public_sub
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  manage_vpc = data.terraform_remote_state.vpc.outputs.manage_vpc
}