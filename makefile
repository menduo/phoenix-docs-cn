.PHONY: clean

clean:
	find . -name '*.pyc' -delete
	find . -name '*.py~' -delete
	find . -name '*.pyo' -delete

all:
	$(shell echo "what" )

default:
	$(ls;pwd;)

md2rst:
	pandoc README.md -f markdown -t rst -o README.rst
	cp README.rst index.rst
	cp README.md  docs/README.md
	cp README.rst docs/README.rst
	cp README.rst docs/index.rst
