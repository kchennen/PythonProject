## .PHONY defines parts of the makefile that are not dependant on any specific file
## This is most often used to store functions
.PHONY = help activate create_venv develop setup test run clean

help:
	@python -c "import pyfiglet,termcolor; termcolor.cprint(text=pyfiglet.figlet_format(text='PythonProject',font='standard'),color='magenta',attrs=['bold'],)"
	@echo "-----------------------------------HELP-----------------------------------"
	@echo "* activate	- Activate virtual environment."
	@echo "* create_venv	- Create virtual environment."
	@echo "* develop	- Install application in dev mode."
	@echo "* install	- Install the application."
	@echo "* register	- Claim project namespace on PyPi.org."
	@echo "* install	- Install the package."
	@echo "* upload	- Upload the package to PyPi.org cloud."
	@echo "* uninstall	- Remove the package and its dependencies."
	@echo "* preview_docs	- Preview documentation site."
	@echo "* build_docs	- Build documentation site."
	@echo "* test		- Run tests in tox environments."
	@echo "* test_dev	- Run tests in tox dev environments."
	@echo "* test_all	- Run all tests in tox environments."
	@echo "* flake8	- Run Flake8 to test code formatting."
	@echo "* watch_test	- Watchdog to automatically launch tests on file changes."
	@echo "* run		- Run package with arguments: make run ARGS='--foo bar'."
	@echo "* clean		- Clean temporary files."
	@echo "--------------------------------------------------------------------------"

ENV_PATH = $(shell pwd)

init:
	pip install -r init_requirements.txt
	virtualenv --version
	virtualenv venv
	bash --rcfile "venv/bin/activate"


# Activate virtual environment
activate:
	./bin/activate_venv.sh

# Create virtual environment
init_venv:
	pip install -r requirements.txt

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

# Deploy documentation site on Github Pages
deploy_github_docs:
	mkdocs gh-deploy

# Deploy documentation site for GitLab Pages
deploy_gitlab_docs:
	mkdocs build --strict --verbose --site-dir public

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

# Run package with arguments: make run ARGS='--foo bar'
run:
	pythonproject $(ARGS)

# Clean temporary files
clean:
	rm -r .tox *.egg-info* dist site .coverage coverage.xml

# Defines the default target that `make` will to try to make, or in the case of a phony target, execute the specified commands
# This target is executed whenever we just type `make`
.DEFAULT_GOAL = help
