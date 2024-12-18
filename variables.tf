variable "region" {
  description = "A região AWS onde o banco de dados será provisionado"
  type        = string
  default     = "us-east-1"
}

variable "cluster_identifier" {
  description = "O identificador do cluster Aurora"
  type        = string
  default     = "my-aurora-cluster"
}

variable "engine" {
  description = "O tipo de engine do banco de dados (aurora, aurora-mysql, aurora-postgresql)"
  type        = string
  default     = "aurora"
}

variable "engine_version" {
  description = "A versão do engine do Aurora"
  type        = string
  default     = "5.6"
}

variable "master_username" {
  description = "Nome de usuário mestre do banco de dados"
  type        = string
}

variable "master_password" {
  description = "Senha mestre do banco de dados"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "Nome do banco de dados inicial"
  type        = string
  default     = "mydb"
}

variable "backup_retention_period" {
  description = "Período de retenção do backup em dias"
  type        = number
  default     = 7
}

variable "storage_encrypted" {
  description = "Se o armazenamento do banco de dados deve ser criptografado"
  type        = bool
  default     = true
}

variable "instance_class" {
  description = "Classe da instância do RDS"
  type        = string
  default     = "db.r5.large"
}

variable "publicly_accessible" {
  description = "Se a instância do banco de dados será acessível publicamente"
  type        = bool
  default     = false
}

variable "db_subnet_group_name" {
  description = "Nome do grupo de subnets para o RDS"
  type        = string
}

variable "subnet_ids" {
  description = "IDs das subnets onde o banco de dados será implantado"
  type        = list(string)
}
