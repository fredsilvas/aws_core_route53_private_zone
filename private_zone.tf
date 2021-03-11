module "private_zone" {
  source = "git::https://git.ifpr.edu.br/infraestrutura/ifpr-devops/terraform/modulos/modulos_aws/route53/zones/private_zone.git"

  name    = var.nome_zona
  comment = "Private Zone - ${var.nome_zona}"

  main_vpc = module.data_vpc_prod.vpc_prod_id

  # uncomment next line to add secondary vpcs, then insert the vpc_ids
  # secondary_vpcs = [ module.data_vpc_stage.vpc_stage_id ]

  tags = {
    Name             = "private_zone_${var.nome_zona}"
    CentroDeCusto    = var.centro_de_custo
    Proprietario     = var.proprietario
    ChamadoInterno   = var.chamado_interno
    Ambiente         = var.ambiente
    Projeto          = var.projeto
    Vpc              = var.vpc
    ResponsavelInfra = var.responsavel_infra
    Critico          = true
    DataCriacao      = var.data_criacao
    DataAlteracao    = formatdate("DD-MM-YYYY-hh-mm-ss", timeadd(timestamp(), "-3h"))
    Sensibilidade    = "5"
    Criptografado    = false
  }

}