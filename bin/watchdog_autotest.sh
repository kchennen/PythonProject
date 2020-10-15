#!/usr/bin/env bash

watchmedo shell-command --patterns="*.py" --recursive --command="clear; tox -v" pythonproject
