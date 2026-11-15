variable "environment" {
    default = "dev"
}

variable "project" {
    default = "roboshop"
}

variable "instances" {
    type = map  
    default = {
        mongodb = {
            instance_type = "t3.micro"
            port_no = "27017"
        },
        redis = {
            instance_type = "t3.small"
            port_no = "6379"
        },
        frontend = {
            instance_type = "t3.micro"
            port_no = "80"
        }
    }
}

variable "ami_id" {
    type = string
    default = "ami-0055977a6e828a4f4"
    description = "AMI_ID of instance"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "instance type"

    validation {
        condition = contains(["t3.micro","t3.small","t3.medium","t3.large"],var.instance_type)
        error_message = "instance type must be less than large"
    }
}

variable "zone_id" {
    default = "Z082193024CQOK5S2G9S6"
}

variable "domain_name" {
    default = "devopsadipractice.online"
}
