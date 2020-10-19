## .PHONY defines parts of the makefile that are not dependant on any specific file
## This is most often used to store functions
.PHONY = help activate create_venv develop setup test run clean

help:
	@echo "---------------HELP-----------------"
	@echo "To setup the project type make setup"
	@echo "To test the project type make test"
	@echo "To run the project type make run"
	@echo "------------------------------------"

ENV_PATH = $(shell pwd)


# Activate virtual environment
activate:
	./bin/activate_venv.sh

# Create virtual environment
create_venv:
	virtualenv venv

# Install application in dev mode, i.e that updates with the code change without having to reinstall the package.
develop:
	python setup.py develop

# Install the application
install:
	python setup.py install

# Claim project namespace on PyPi.org
register:
	python setup.py register

# After successful registration, upload the package to PyPi.org cloud
upload:
	python setup.py sdist upload

# Remove the package and its dependencies
uninstall:
	pip uninstall pythonproject

# Preview documentation site
preview_docs:
	mkdocs serve

# Build documentation site
build_docs:
	mkdocs build --clean

# Run tests in tox environments
test:
	tox -p 0 -e py38

test_dev:
	tox -p 0 --develop -e py38

test_all:
	tox -p 0 -e ALL

# Run Flake8 to test code formatting
flake8:
	flake8 pythonproject

# Watchdog command that automatically launch tests on file changes
watch_test:
	watchmedo shell-command --patterns="*.py" --recursive --command="clear; make test_dev" pythonproject

# Run package with arguments: make run ARGS="--foo bar"
run:
	pythonproject $(ARGS)

clean:
	rm -r .tox *.egg-info* dist site

# Defines the default target that `make` will to try to make, or in the case of a phony target, execute the specified commands
# This target is executed whenever we just type `make`
.DEFAULT_GOAL = help

#[testenv:docs-deploy]
#description = built fresh docs and deploy them
#deps = {[testenv:docs]deps}
#basepython = {[testenv:docs]basepython}
#commands = mkdocs gh-deploy --clean