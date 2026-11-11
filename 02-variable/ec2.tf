resource "aws_instance" "roboshop-mongodbb" {
    instance_type = var.instance_type
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.roboshop-mongodbb.id]

    tags = var.ec2_tags

}

resource "aws_security_group" "roboshop-mongodbb" {
    name = "roboshop-mongodbb"
    description = "allow inbound and outbound traffic"

    ingress {
        from_port = var.from_port
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.cidr
        
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        
    }

    tags = {
        Name = "roboshop-mongodbb"
    }
}
    
