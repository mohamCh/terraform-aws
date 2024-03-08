#----------- peering ---------

provider "aws" {
  alias  = "peer"
  region = "us-east-1"

  # Accepter's credentials.
}

data "aws_caller_identity" "peer" {
  provider = aws.peer
}

#------------------ client 1 ----------------

# Requester's side of the connection.
resource "aws_vpc_peering_connection" "peer_client1" {
  vpc_id        = aws_vpc.vpc_main.id
  peer_vpc_id   = aws_vpc.vpc_client1.id
  peer_owner_id = data.aws_caller_identity.peer.account_id
  peer_region   = "us-east-1"
  auto_accept   = false

  tags = {
    Side = "Requester"
  }
}

# Accepter's side of the connection.
resource "aws_vpc_peering_connection_accepter" "peer_client1" {
  provider                  = aws.peer
  vpc_peering_connection_id = aws_vpc_peering_connection.peer_client1.id
  auto_accept               = true

  tags = {
    Side = "Accepter"
  }
}

#------------------ client 2 ----------------

# Accepter's side of the connection.

resource "aws_vpc_peering_connection" "peer_client2" {
  vpc_id        = aws_vpc.vpc_main.id
  peer_vpc_id   = aws_vpc.vpc_client2.id
  peer_owner_id = data.aws_caller_identity.peer.account_id
  peer_region   = "us-east-1"
  auto_accept   = false

  tags = {
    Side = "Requester"
  }
}

# Accepter's side of the connection.
resource "aws_vpc_peering_connection_accepter" "peer_client2" {
  provider                  = aws.peer
  vpc_peering_connection_id = aws_vpc_peering_connection.peer_client2.id
  auto_accept               = true

  tags = {
    Side = "Accepter"
  }
}
