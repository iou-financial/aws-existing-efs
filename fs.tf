resource "aws_efs_file_system" "this" {
  encrypted      = true
  creation_token = local.resource_name
  tags           = merge(local.tags, { Name = local.resource_name })
}

resource "aws_efs_mount_target" "file" {
  count = length(local.private_subnet_ids)

  file_system_id  = aws_efs_file_system.this.id
  subnet_id       = local.private_subnet_ids[count.index]
  security_groups = [aws_security_group.this.id]
}
