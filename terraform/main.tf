provider "aws" {
  region = "eu-north-1"
}

# -----------------------------
# K8s MASTER NODE
# -----------------------------
resource "aws_instance" "k8s_master" {
  ami           = "ami-073130f74f5ffb161"  # Ubuntu 24.04 LTS
  instance_type = "m7i-flex.large"         # 2 vCPU, 8 GB RAM
  key_name      = "terraform"

  vpc_security_group_ids = [
    "sg-010d275ca99fdb5cf"
  ]

  associate_public_ip_address = true

  tags = {
    Name = "k8s-master"
  }
}

# -----------------------------
# K8s WORKER NODE
# -----------------------------
resource "aws_instance" "k8s_worker" {
  ami           = "ami-073130f74f5ffb161"  # Ubuntu 24.04 LTS
  instance_type = "m7i-flex.large"         # 2 vCPU, 8 GB RAM
  key_name      = "terraform"

  vpc_security_group_ids = [
    "sg-010d275ca99fdb5cf"
  ]

  associate_public_ip_address = true

  tags = {
    Name = "k8s-worker"
  }
}

# -----------------------------
# OUTPUTS
# -----------------------------
output "master_ip" {
  value = aws_instance.k8s_master.public_ip
}

output "worker_ip" {
  value = aws_instance.k8s_worker.public_ip
}
