resource "aws_instance" "vijayinstance" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-02c861606aa15b43f"]

  tags = {
    Name = "Vijay"
    project = "ec2"
  }
}