#!/usr/bin/env bash

source /databricks/python3/bin/activate
# requirements.txt from https://docs.databricks.com/_extras/documents/requirements-12.2.txt
# manually removed unattended-upgrades
# changed mleap==0.20.0 to mleap==0.22.0
[ -d $HOME/.venv ] && rm -fr $HOME/.venv
virtualenv $HOME/.venv
source $HOME/.venv/bin/activate
pip install --upgrade pip
pip install --extra-index-url https://download.pytorch.org/whl/cpu -r requirements.txt