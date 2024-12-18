output "db_endpoint" {
  description = "O endpoint do cluster Aurora"
  value       = aws_rds_cluster.aurora_cluster.endpoint
}

output "db_instance_endpoint" {
  description = "O endpoint da instância do Aurora"
  value       = aws_rds_cluster_instance.aurora_instance.endpoint
}
