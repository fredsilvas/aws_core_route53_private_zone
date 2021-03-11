##############################################################################################
### VARIAVEIS PROJETO
variable "data_criacao" {
  description = "Creation Date of this Project. Padrão DD-MM-YYYY-hh-mm-ss (Horario Local)"
  default     = ""
}

variable "centro_de_custo" {
  description = "Centro de Custo do Projeto"
  default     = ""
}

variable "proprietario" {
  description = "Proprietário do Projeto"
  default     = "Fulano de Tal"
}

variable "chamado_interno" {
  description = "Numero do chamado relacionado a este projeto"
  default     = "GLPI=XXXXX"
}

variable "ambiente" {
  description = "Ambiente do Projeto"
  default     = "All"
}

variable "projeto" {
  description = "Projeto"
  default     = "DNS"
}

variable "vpc" {
  description = "VPC em que este projeto está rodando"
  default     = "All"
}

variable "responsavel_infra" {
  description = "Responsavel de Infra deste Projeto"
  default     = ""
}

variable "responsavel_dev" {
  description = "Responsavel de Sistemas deste Projeto"
  default     = ""
}

variable "responsavel_db" {
  description = "Responsavel de Banco de Dados"
  default     = ""
}

variable "nome_zona" {
  description = "Nome da Zona (domínio)"
  default     = ""
}


##############################################################################################
### VARIAVEIS AWS
variable "aws_region" {
  description = "VPC AWS Region"
  default     = "sa-east-1"
}

variable "az" {
  description = "Names of Availabity Zones"
  default     = ["sa-east-1a", "sa-east-1b", "sa-east-1c"]
}

variable "ssh_key_name" {
  description = "SSH key name"
  default     = "us-east"
}
##############################################################################################