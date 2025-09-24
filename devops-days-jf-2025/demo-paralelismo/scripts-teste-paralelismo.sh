# Verificando o valor padrão atual
terraform plan -help

# Inicializar o Terraform
terraform init

# Executar com paralelismo padrão (10)
time terraform apply -auto-approve

# Executar com paralelismo customizado (5)
time terraform apply -parallelism=5 -auto-approve

# Executar com paralelismo maior (20)
time terraform apply -parallelism=20 -auto-approve

# Em outro terminal, durante a execução do terraform
watch -n 1 'ps aux | grep -E "(terraform|sleep)" | grep -v grep'