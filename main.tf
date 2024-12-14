resource "aws_instance" "k8s"{
   
    ami =data.aws_ami.aws-ami.id
    instance_type = var.instance_type
    vpc_security_group_ids=[aws_security_group.k8smasternode.id]
    depends_on=[aws_security_group.k8smasternode]

    tags ={
        Name=var.tags
    }
    
}

resource "aws_security_group" "k8smasternode"{
    name=var.security_group_name
    description="creating ec2 instance for the k8s master node"

egress {
    from_port= 0
    to_port= 0
    cidr_blocks= ["0.0.0.0/0"]
    protocol= "-1"
    ipv6_cidr_blocks= ["::/0"]
}

tags={
    Name=var.tags
}

}

# resource "aws_vpc_security_group_ingress_rule" "k8smasternode_ipv4" {
#   security_group_id = aws_security_group.k8smasternode.id
#   cidr_ipv4         = aws_vpc.main.cidr_block
#   from_port         = var.from_port
#   ip_protocol       = "tcp"
#   to_port           = var.to_port
# }

