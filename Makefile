.PHONY: help

VAR1=value





all: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


venv:
	venv/bin/activate

runcli:
	source venv/bin/activate ; \
	python xyz.py --help
