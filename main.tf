module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "httpd-instance"
  ami = "ami-0126086c4e272d3c9"
  instance_type          = "t2.micro"
  key_name               = "vinod_2023_new"
  vpc_security_group_ids = ["sg-05a77fe141d5ea296"]
  user_data = file("httpd.sh")
}
