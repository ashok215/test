
# Create  instance 

resource "aws_instance" "ec2" {
    ami = var.ami
    instance_type = var.instance_type
    count = var.count1
    associate_public_ip_address = var.ip_address
    security_groups = ["${aws_security_group.group.name}"]
     
    


    tags = {
        Name = "${var.name}-${count.index+1}-${var.environment}-${var.project}" 
        Region = var.region
        Count = var.count1
        Project = var.project
        Environment = var.environment
    }

}

#  Print results to the screen 

output "region" { value = "${var.region}" }
output "ami" { value = "${aws_instance.ec2.*.ami}" }
output "instance_type" { value = "${aws_instance.ec2.*.instance_type}" }



