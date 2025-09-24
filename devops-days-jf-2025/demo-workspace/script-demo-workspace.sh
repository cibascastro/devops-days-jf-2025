# Ver workspace atual
terraform workspace show

# Criar workspaces para diferentes ambientes
terraform workspace new dev
terraform workspace new hom
terraform workspace new prod

# Listar todos os workspaces
terraform workspace list

# Tentar deletar o default (falhará)
terraform workspace delete default

# Deletar outros workspaces (precisa não estar neles)
terraform workspace select default
terraform workspace delete dev
terraform workspace delete hom
terraform workspace delete prod