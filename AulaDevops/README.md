
---

## ⚙️ Pipeline CI/CD (Azure DevOps)

O pipeline realiza as seguintes etapas:

1. **Instalação do Terraform**
2. **Inicialização (`terraform init`)** com backend remoto no Azure Storage
3. **Validação (`terraform validate`)** da estrutura
4. **Publicação dos arquivos como artefato de pipeline**

> O backend remoto garante que o estado (`terraform.tfstate`) seja salvo no Azure Blob Storage, promovendo segurança e controle de versionamento entre times/ambientes.

---

## ☁️ Backend Remoto

O `terraform.tfstate` é armazenado em:

- **Resource Group**: `rg-terraformdevops-001`
- **Storage Account**: `stterraformdevopsdev001`
- **Container**: `terraform-state`
- **Chave do estado**: `terraform.tfstate`

---

## 🚀 Como usar

1. Faça um fork ou clone do projeto
2. No Azure DevOps:
   - Configure uma **Service Connection** chamada `Desenvolvimento2` com permissões de Contributor no Azure
   - Certifique-se que seu pipeline está conectado ao repositório com os arquivos
3. Execute o pipeline!

---

## 🛠️ Pré-requisitos

- Conta ativa no [Microsoft Azure](https://portal.azure.com/)
- [Terraform](https://www.terraform.io/) (instalado via pipeline)
- [Azure DevOps](https://dev.azure.com/) com um projeto configurado

---

## 📌 Observações

- O `backend "azurerm"` no Terraform foi configurado de forma **remota**, e seus parâmetros são fornecidos dinamicamente via pipeline (`azure-pipelines.yml`).
- O nome da Storage Account deve ser único globalmente no Azure. Neste projeto, ele é dinâmico com base no workspace (`terraform.workspace`).

---

## ✍️ Autor

Desenvolvido por **Jhonny Guimarães**  
📍 Colombo - PR  
🎓 Sistemas de Informação - Universidade Positivo  
🌐 [codeguima](https://www.codeguima.com.br)

---

## 📄 Licença

Este projeto está sob a licença [MIT](LICENSE).



