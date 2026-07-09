# AWS Terraform Bootstrap

Projeto desenvolvido para provisionar a infraestrutura base responsável pelo backend remoto do Terraform.

Seu objetivo é criar um bucket Amazon S3 seguro e reutilizável para armazenamento do Terraform State, permitindo que múltiplos projetos compartilhem um backend remoto de forma organizada e segura.

Este projeto representa uma etapa comum em ambientes corporativos, onde a infraestrutura responsável pelo gerenciamento do estado do Terraform é provisionada separadamente da infraestrutura das aplicações.

---

## 🎯 Objetivos de Aprendizado

Durante este laboratório foram explorados conceitos como:

- Terraform
- Infrastructure as Code (IaC)
- Amazon S3
- Backend Remoto
- Terraform State
- State Migration
- Versionamento de Providers
- Organização de projetos Terraform
- Parametrização com variáveis
- Outputs
- Boas práticas de segurança

---

## 🚀 Recursos Provisionados

Este projeto cria automaticamente:

- Bucket Amazon S3
- Bloqueio de acesso público ao bucket
- Criptografia Server-Side (SSE-S3)
- Tags padronizadas para identificação dos recursos

---

## 📂 Estrutura do Projeto

```text
.
├── provider.tf
├── versions.tf
├── variables.tf
├── locals.tf
├── main.tf
├── outputs.tf
├── terraform.tfvars.example
├── README.md
└── .gitignore
```

---

## 🔧 Provisionamento

Inicializar o projeto:

```bash
terraform init
```

Visualizar o plano de execução:

```bash
terraform plan
```

Provisionar a infraestrutura:

```bash
terraform apply
```

Remover os recursos:

```bash
terraform destroy
```

---

## 🔍 Aprendizados Praticados

### Terraform

- Estruturação de projetos Terraform
- Organização da infraestrutura em múltiplos arquivos
- Separação entre código e configuração (`terraform.tfvars`)
- Utilização de variáveis para eliminar hardcode
- Centralização de configurações utilizando `locals`
- Utilização de outputs para exposição de informações relevantes
- Controle de versões do Terraform e Provider AWS (`versions.tf`)
- Execução do ciclo completo:
  - terraform init
  - terraform plan
  - terraform apply
  - terraform destroy

### Backend Remoto

- Conceitos de Terraform State
- Diferença entre State Local e State Remoto
- Estrutura necessária para utilização de Backend S3
- Preparação de uma infraestrutura compartilhada para armazenamento remoto do Terraform State.
- Migração do Terraform State do backend local para o backend remoto utilizando `terraform init -migrate-state`

### Amazon S3

- Criação de bucket privado
- Configuração de criptografia em repouso (SSE-S3)
- Bloqueio de acesso público
- Organização do armazenamento de múltiplos arquivos Terraform State utilizando diferentes chaves (`key`)

### Boas Práticas

- Reutilização da infraestrutura entre diferentes projetos
- Padronização através de tags
- Parametrização utilizando variáveis
- Separação de responsabilidades entre infraestrutura base e infraestrutura das aplicações

---

## 📤 Outputs Disponíveis

Após o provisionamento são disponibilizadas informações importantes para integração com outros projetos:

- Nome do bucket S3
- ARN do bucket
- Região do bucket

---

## 🚀 Próximos Passos

- [x] Criar bucket Amazon S3
- [x] Configurar bloqueio de acesso público
- [x] Configurar criptografia em repouso
- [x] Criar outputs
- [x] Configurar Backend Remoto utilizando este bucket

---

## 🛠 Tecnologias Utilizadas

- Terraform
- HashiCorp Configuration Language (HCL)
- Amazon S3
- AWS Provider

---

## 💡 Principais Conceitos Praticados

Durante este projeto foram praticados conceitos amplamente utilizados em ambientes corporativos, incluindo:

- Infrastructure as Code (IaC)
- Backend Remoto para Terraform
- Gerenciamento de Terraform State
- Organização de infraestrutura compartilhada
- Parametrização e reutilização de código
- Versionamento de Providers
- Boas práticas de segurança em buckets S3

---

## 🔄 Integração com Outros Projetos


Este projeto faz parte da série de laboratórios **DevOps Journey** e fornece a infraestrutura compartilhada utilizada como backend remoto do Terraform.

### Projetos que utilizam este backend

- ✅ [aws-devops-website-lab](https://github.com/HELENA-HOS/aws-devops-website-lab)

Novos projetos da série poderão reutilizar este bucket apenas alterando a propriedade `key` da configuração do backend:

```hcl
terraform {

  backend "s3" {

    bucket       = "helena-terraform-state"
    key          = "website-lab/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true

  }

}
```
Cada projeto mantém seu próprio arquivo Terraform State, preservando o isolamento entre as infraestruturas enquanto compartilham o mesmo backend remoto.

---

## 🚀 Evoluções Futuras

Este projeto poderá evoluir para incorporar funcionalidades utilizadas em ambientes corporativos, como:

- Versionamento do bucket S3
- Utilização de Customer Managed Keys (AWS KMS)
- Políticas de acesso mais restritivas
- Estrutura para múltiplos ambientes
- Bootstrap completo da infraestrutura de plataforma
- Utilização de AWS Systems Manager Parameter Store ou outros mecanismos para centralização de configurações compartilhadas.

---

## 👩‍💻 Autora

**Helena Oliveira Silva**

🔗 LinkedIn  
https://www.linkedin.com/in/helena-oliveira-silva/

🔗 GitHub  
https://github.com/HELENA-HOS

---

## 📚 Referências

- Terraform Documentation
- AWS Provider Documentation
- Amazon S3 Documentation