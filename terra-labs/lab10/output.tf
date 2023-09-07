output "for_output_list" {
    description = "forloop with list"
    value = [for instance in aws_instance.web: instance.public_ip]
  
}


output "for_output_map" {
    description = "forloop with map"
    value = {for instance in aws_instance.web: instance.id => instance.public_dns}
}

output "for_output_map1" {
    description = "forloop with map"
    value = {for c, instance in aws_instance.web: c => instance.private_dns}
  
}
