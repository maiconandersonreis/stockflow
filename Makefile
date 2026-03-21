DC = docker compose
WEB = $(DC) run --rm web

.PHONY: up up-d down restart logs console test

up:
	$(DC) up

up-d:
	$(DC) up -d

down:
	$(DC) down

restart:
	$(DC) restart

logs:
	$(DC) logs -f

console:
	$(WEB) rails console

test:
	$(WEB) rails test
