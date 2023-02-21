# This block outputs the public IP addresses of the EC2 instances using the "aws_instance" resource. 
# It uses the "web_server" resource name and the "public_ip" attribute to retrieve the IP addresses
  

output "web_server_az1_public_ips" {
  value = aws_instance.web_server_az1.*.public_ip
}

output "web_server_az2_public_ips" {
  value = aws_instance.web_server_az2.*.public_ip
}








