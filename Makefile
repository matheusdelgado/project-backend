SHELL := /bin/bash

.PHONY: venv
venv : \
    python3 -m venv $(VENV) && source $(BIN)/activate

.PHONY: install
install := \
    venv \
    $(BIN)/pip install -r $(requirements)/requirements.txt

migrate: \
    $(PYTHON) manage.py makemigrations \
    $(PYTHON) manage.py migrate

.PHONY: run
run: \
    $(PYTHON) $(APP_DIR)/manage.py runserver \

start: install migrate run