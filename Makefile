SHELL := /bin/bash

# Note requires tab between function calls

install:
	.venv/bin/pip install .

develop:
	.venv/bin/pip install -e .

venv:
	python -m venv .venv
	#source .venv/bin/activate
	source .venv/Scripts/activate
	pip install --upgrade pip
	pip install --upgrade setuptools

clean:
	rm -rf .venv
	rm -rf *.egg-info

dock-build:
	#docker-compose up --build
	docker build -t mask-query-aide .

dock-run:
	#docker-compose up
	# --rm cleans up container after use
	# -it runs the container in interactive mode
	# run with current directory as a volume
	#docker run --rm -v ${PWD}:/app mask-query-aide python /app/mask_query_aide/headlines.py

	docker run --rm mask-query-aide

dock-check:
	docker ps