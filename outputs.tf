output "efs_id" {
  value       = aws_efs_file_system.this.id
  description = "string ||| ID of the file system (e.g. fs-ccfc0d65)"
}

output "efs_arn" {
  value       = aws_efs_file_system.this.arn
  description = "string ||| ARN of the file system"
}

output "security_group_id" {
  value       = aws_security_group.this.id
  description = "string ||| ID of the security group attached to the file system"
}
