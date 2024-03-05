install:
	pip install --upgrade pip && pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py

requirements:
	pip install --upgrade pip
	pip install -r requirements.txt

all: install lint test