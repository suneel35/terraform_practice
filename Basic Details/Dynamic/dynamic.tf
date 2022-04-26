variable "sg_ports"{
  type = list(number)
  description = "list of ingress ports"
  default = [80,22,443]
}

resource "aws_security_group" "dynamicsg" {
  name = "dynamic-sg"
  description = " ingress for vault"

dynamic "ingress" {
  for_each = var.sg_ports
  #iterator = port
  content {
    from_port = ingress.value
    to_port = ingress.value
    protocol = "tcp"
    cidr_blocks = [0.0.0.0/0]
  }
}
}
