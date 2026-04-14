# 💈 BarberBot - Sistema de Agendamento para Barbearia

O **BarberBot** é um bot inteligente desenvolvido para automatizar o processo de agendamento em barbearias, facilitando a vida dos clientes e otimizando a gestão do negócio.

---

## 🚀 Funcionalidades

- 📅 Agendamento de horários automático
- ⏰ Visualização de horários disponíveis
- ❌ Cancelamento de agendamentos
- 🔁 Reagendamento fácil
- 👤 Cadastro de clientes
- 💬 Integração com chat
- 📊 Painel administrativo

---

## 🛠️ Tecnologias Utilizadas

- **Backend:** Node.js
- **Banco de Dados:** PostgreSQL
- **Bot:** API do WhatsApp
- **ORM:** Prisma
- **Hospedagem:** Docker / Render

---

## 📦 Instalação

### 1. Clone o repositório

git clone https://github.com/seu-usuario/barberbot.git  
cd barberbot

### 2. Instale as dependências

npm install

### 3. Configure as variáveis de ambiente

Crie um arquivo `.env`:

DATABASE_URL=seu_banco_aqui  
PORT=3000

### 4. Execute o projeto

node server.js

---

## 🤖 Como Funciona

1. O cliente inicia conversa com o bot
2. Escolhe o serviço (corte, barba, etc.)
3. Escolhe o Barbeiro
4. Escolhe uma Data
5. Seleciona um horário disponível
6. Confirma o agendamento
7. O sistema salva no banco de dados

---

## 📱 Exemplo de Uso

Cliente: Quero agendar um corte  
Bot: Claro! Escolha um horário disponível:  
[10:00] [11:00] [14:00]

Cliente: 11:00  
Bot: Agendamento confirmado! 💈

---

## 📊 Estrutura do Projeto

/controllers  
/models  
/routes

---

## 🔐 Segurança

- Validação de dados do usuário
- Proteção contra agendamentos duplicados
- Controle de horários disponíveis

---

## 📌 Melhorias Futuras

- 🔔 Notificações automáticas de lembrete
- 💳 Integração com pagamento online
- 📈 Relatórios de faturamento
- 🌐 Interface web para clientes

---

## 🤝 Contribuição

Contribuições são bem-vindas!

1. Fork o projeto
2. Crie uma branch
3. Commit suas alterações
4. Push para a branch
5. Abra um Pull Request

---

## 📄 Licença

Este projeto está sob a licença MIT.

---

## 👨‍💻 Autor

Desenvolvido por Mateus Barbosa
