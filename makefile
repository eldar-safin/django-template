VENV=./.venv/bin
PYTHON=$(VENV)/python3
PIP=$(VENV)/pip3

install:
	$(PIP) install -r requirements.txt

freeze:
	$(PIP) freeze > requirements.txt

test:
	$(PYTHON) ./app/manage.py test

run:
	$(PYTHON) ./app/manage.py runserver

up:
	docker compose up --detach

down:
	docker compose down
