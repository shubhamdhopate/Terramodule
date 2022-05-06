output "vpc_id" {
value = module.vpc.vpc_id  
}
output "public_subnet_ids" {
    value = module.vpc.public_subnet_ids  
}
output "web_sg_id" {
value = module.vpc.web_sg_id  
} 

output "private_subnet_ids" {
    value = module.vpc.pvt_subnet_ids  
} 
