resource "aws_security_group" "this" {
  name   = "efs/${local.resource_name}"
  vpc_id = local.vpc_id
  tags   = merge(local.tags, { Name = "efs/${local.resource_name}" })
}
