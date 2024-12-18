provider "aws" {
  region = var.region
}

resource "aws_rds_cluster" "aurora_cluster" {
  cluster_identifier      = var.cluster_identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  master_username         = var.master_username
  master_password         = var.master_password
  database_name           = var.database_name
  backup_retention_period = var.backup_retention_period
  storage_encrypted       = var.storage_encrypted
  tags = {
    Name = "AuroraCluster"
  }
}

resource "aws_rds_cluster_instance" "aurora_instance" {
  cluster_identifier      = aws_rds_cluster.aurora_cluster.cluster_identifier
  instance_class          = var.instance_class
  engine                  = var.engine
  engine_version          = var.engine_version
  publicly_accessible     = var.publicly_accessible
  db_subnet_group_name    = var.db_subnet_group_name
  tags = {
    Name = "AuroraInstance"
  }
}

resource "aws_db_subnet_group" "aurora_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids

  tags = {
    Name = "AuroraSubnetGroup"
  }
}
