variable "ami_id" {
    type = string
    default = "ami-0055977a6e828a4f4"
    description = "AMI_ID of instance"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "instance type"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "roboshop-mongodbb"
        Environment = "dev"
        Terraform = "true"
        project = "roboshop"
    }
    
}

variable "cidr" {
    type = list 
    default = ["0.0.0.0/0"]
}

variable "from_port" {
    type = number
    default = 0
}

