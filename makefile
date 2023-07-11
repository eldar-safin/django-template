VENV=./.venv/bin
PYTHON=$(VENV)/python3
PIP=$(VENV)/pip3
MANAGE=$(PYTHON) ./app/manage.py

install:
	$(PIP) install -r requirements.txt

freeze:
	$(PIP) freeze > requirements.txt

migrate:
	$(MANAGE) makemigrations
	$(MANAGE) migrate

test:
	$(MANAGE) test

run:
	$(MANAGE) runserver

up:
	docker compose up --detach

down:
	docker compose down

code:
	code .
