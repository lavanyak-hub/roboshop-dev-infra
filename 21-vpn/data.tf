data "aws_ami" "openvpn" {
    owners           = ["973714476881"]  # need to give the openvpn Account id
    most_recent      = true
    
    filter {
        name   = "name"
        values = [""]  # need to give openvpn (AMI name)
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_ssm_parameter" "open_vpn_sg_id" {
  name = "/${var.project_name}/${var.environment}/open_vpn_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project_name}/${var.environment}/public_subnet_ids"
}
