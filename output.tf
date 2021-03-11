##############################################################################################
### OUTPUT - Private Zone
output "Private_Zone_Info" {
  value = module.private_zone
}

output "Private_Zone_Domain" {
  value = var.nome_zona
}