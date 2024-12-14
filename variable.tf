variable "instance_type"{
    default="t3.micro"
    type= string
    validation {
        condition= contains(["t3.micro","t3.large","t3.small"], var.instance_type)
        error_message="instance type contains only be one of t3.micro,t3.large,t3.small,t5.large"
    }
}

variable "tags"{
    default={}
}

variable "instance_name"{
    default={}
    
}

variable "security_group_name"{
    default={}
}

