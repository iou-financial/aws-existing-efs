data "ns_connection" "network" {
  name     = "network"
  type     = "network/aws"
  contract = "network/aws/vpc"
}

locals {
  env_name            = data.ns_connection.network.this.env_name
  vpc_id             = data.ns_connection.network.outputs.vpc_id
  private_subnet_ids = data.ns_connection.network.outputs.private_subnet_ids
  public_subnet_ids = data.ns_connection.network.outputs.public_subnet_ids
}
