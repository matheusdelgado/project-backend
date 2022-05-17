SHELL := /bin/bash

include .env

.PHONY: venv
venv : \
    python3 -m venv $(VENV) && source $(BIN)/activate

.PHONY: install
install := \
    venv \
    $(BIN)/pip install -r $(requirements)/requirements.txt

.PHONY: migrate
migrate := \
    $(PYTHON) manage.py makemigrations \
    $(PYTHON) manage.py migrate

.PHONY: test
test: \
    $(PYTHON) $(APP_DIR)/manage.py test application --verbosity=0 --parallel --failfast

.PHONY: run
run := \
    $(PYTHON) manage.py runserver

.PHONY: start
start := \
    install migrate run
