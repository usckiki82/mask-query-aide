SHELL := /bin/bash

# Note requires tab between function calls

install:
	.venv/bin/pip install .

develop:
	.venv/bin/pip install -e .

venv:
	python -m venv .venv
	source .venv/bin/activate
	#source .venv/Scripts/activate
	pip install --upgrade pip
	pip install --upgrade setuptools

clean:
	rm -rf .venv
	rm -rf *.egg-info

dock-build-custom:
	docker build -t mask-query-aide .

dock-run-custom:
	docker run -p 8887:8887 -it --rm -v ${PWD}:/usr/src/app mask-query-aide

dock-pull-tf:
	docker pull tensorflow/tensorflow:latest-gpu-jupyter

dock-run-tf:
	#docker run -p 8888:8888 -it --rm -v ${PWD}:/usr/src/app tensorflow/tensorflow:latest-gpu-jupyter
	#docker run -it --rm -v ${PWD}:/usr/src/app tensorflow/tensorflow:latest-gpu-jupyter
	#docker run -it -p 8888:8888  --rm -v ${PWD}:/tmp -w /tmp tensorflow/tensorflow:latest-gpu-jupyter
	docker run -it -p 8888:8888 --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 --rm -v ${PWD}:/tmp -w /tmp tensorflow/tensorflow:latest-gpu-jupyter

dock-check:
	docker ps