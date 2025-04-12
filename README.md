# Cloud_Azure_Native

# Azure Storage & SQL Database Project

Este projeto usa **Terraform** e **PowerShell** para criar e configurar os seguintes recursos no **Microsoft Azure**:

- **Resource Group**
- **SQL Database**
- **Storage Account**
- **Upload de Imagens no Blob Storage**

## Passos para Implantação

### 1. Preparação

Certifique-se de que você tem o **Terraform** e o **Azure CLI** instalados em seu sistema.

- [Instalar o Terraform](https://www.terraform.io/downloads)
- [Instalar o Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

### 2. Executar o Terraform

No diretório `terraform/`, execute os seguintes comandos para criar os recursos no Azure.

```bash
terraform init
terraform plan
terraform apply
