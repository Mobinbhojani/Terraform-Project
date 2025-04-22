  resource "aws_key_pair" "my-key" {
  key_name   = var.key-name
  public_key = file("${path.module}/id_rsa.pub")
}


resource "aws_instance" "my-ec2-instance1" {
  ami                    = var.ami-id
  instance_type          = var.instance-type
  key_name               = aws_key_pair.my-key.key_name 
  vpc_security_group_ids = var.security_group_ids
  subnet_id              =  var.subnet_id
  user_data              = file("${path.module}/userdata.sh")



  tags = {
    Name        = "${var.environment}-ec2"
    Environment = var.environment 
  }
}

#[ aws_subnet.my-sub1.id ]