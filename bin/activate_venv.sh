#! /usr/bin/env bash
ENV_PATH=$(dirname "$(dirname "$0")")/venv/bin/activate;
bash --rcfile "${ENV_PATH}" -i
