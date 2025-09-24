# main.tf
terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

# Criando múltiplos recursos null para observar o paralelismo
resource "null_resource" "test" {
  count = 15
  
  provisioner "local-exec" {
    command = "echo 'Processando recurso ${count.index}' && sleep 2"
  }
  
  triggers = {
    timestamp = timestamp()
  }
}

# Output para mostrar todos os recursos criados
output "recursos_criados" {
  value = length(null_resource.test)
}