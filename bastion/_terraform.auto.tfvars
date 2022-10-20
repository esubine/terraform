env   = "dev"
name  = "bastion"
owner = "subinlee"
tags  = {}

# AMI
ami_owners = ["amazon"]
ami_filters = [
  {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
]

# EC2
instance_type = "t3.micro"
key_name      = "subinlee"

# ssh sg
ssh_sg_description      = "SSH Security group for Bastion EC2 instance"
ssh_ingress_cidr_blocks = ["115.95.222.202/32"] # 자신 ip주소로 변경해야함
ssh_ingress_rules       = ["ssh-tcp"]
ssh_egress_rules        = ["all-all"]

