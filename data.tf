data "aws_ami" "aws-ami"{
    most_recent= true
    owners=[973714476881]
    filter{
        name="name"
        values=["RHEL-9-DevOps-Practice"]
    }
    # filter{
    #     name="status"
    #     values=["available"]
    # }

   
}