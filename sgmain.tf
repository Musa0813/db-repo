module "ec2" {
  source = "../child-module/ec2"


}

module "vpc" {
  source = "../child-module/vpc"

}


module "sg" {
  source  = "../child-module/sg"
  vpc_id  = module.vpc.vpc_id_model
  sg_name = "sg_name"
  sg-tags = {
    Name = "allow_tls"
  }


}