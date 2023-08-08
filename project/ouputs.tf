# Define an output variable named "alb_dns_name"
# This output will provide the DNS name of the Application Load Balancer
output "alb_dns_name" {
    # Set the value of the output to the DNS name of the load balancer
    value = "http://${aws_alb.application_load_balancer.dns_name}"
}
