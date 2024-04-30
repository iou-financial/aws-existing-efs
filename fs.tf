data "aws_efs_file_system" "this" {
  file_system_identifier = var.efs_identifier
}

data "aws_efs_mount_target" "this" {
  count = length(local.private_subnet_ids)

  file_system_id = data.aws_efs_file_system.this.id
  subnet_id       = local.private_subnet_ids[count.index]
}
