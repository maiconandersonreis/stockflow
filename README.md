# StockFlow

Sistema web de gerenciamento de estoque desenvolvido com Ruby on Rails 8.

## Sobre o Projeto

O StockFlow é uma aplicação web completa de gestão de estoque, onde usuários autenticados poderão:

- Cadastrar e gerenciar produtos com código SKU, descrição e estoque mínimo
- Registrar entradas e saídas de estoque com histórico completo
- Visualizar o estoque atual de cada produto calculado em tempo real com base nas movimentações
- Receber notificações (e-mail e/ou WhatsApp) sobre criação, edição e exclusão de produtos, além de alertas de estoque baixo
- Configurar individualmente quais notificações desejam receber e por qual canal

## Tecnologias

- Ruby 3.4.9 / Rails 8.1.2
- PostgreSQL 15
- Redis + Sidekiq
- Docker & Docker Compose
- Hotwire (Turbo + Stimulus)

## Pré-requisitos

- Docker
- Docker Compose
- Make

## Setup

```bash
git clone https://github.com/maiconandersonreis/stockflow.git
cd stockflow
cp .env.example .env
make up-d
docker compose run web rails db:create db:migrate
```

## Comandos Make

```
make up       # sobe os serviços (attached)
make up-d     # sobe os serviços em background
make down     # para os containers
make restart  # reinicia os serviços
make logs     # logs em tempo real
make console  # Rails console
make test     # roda os testes
```

## Acessos

- Aplicação: https://localhost
- Sidekiq: https://localhost/sidekiq

> Na primeira vez, o browser vai exibir um aviso sobre o certificado — basta aceitar para prosseguir.

## Autor

Maicon Anderson de Oliveira Reis
