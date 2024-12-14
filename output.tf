output "instance_id" {
    value = aws_instance.k8s.id
}

output "security_group_id"{
    value=aws_security_group.k8smasternode.id
}