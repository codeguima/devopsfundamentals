# 🌐 Deploy de Site Estático na Azure com Terraform e Azure DevOps

Este projeto demonstra como provisionar uma infraestrutura na Microsoft Azure para hospedar um site estático utilizando **Azure Storage Account** com **static website**, gerenciado por **Terraform** e automatizado com **Azure DevOps Pipelines**.

---

## 🛠 Tecnologias Utilizadas

- [Terraform](https://www.terraform.io/)
- [Microsoft Azure](https://azure.microsoft.com/)
- [Azure DevOps Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/)
- Azure Storage Account (Static Website Hosting)

---

## ⚙️ O que este projeto faz

- Cria um **Resource Group** dinâmico com base no ambiente (`terraform.workspace`)
- Cria uma **Storage Account** com suporte a site estático
- Ativa o modo de **hospedagem de site estático** e define `index.html` como documento principal
- Armazena o estado do Terraform em um **Azure Storage Container** remoto para controle de versões
- Automatiza tudo isso via **Pipeline CI/CD no Azure DevOps**

---

## 📁 Estrutura do Projeto

```bash
.
├── index.html                # Código principal Terraform (infraestrutura)
├── azure-pipelines.yml   # Pipeline de CI/CD no Azure DevOps
└── README.md              # Documentação do projeto
