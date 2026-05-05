#!/usr/bin/env bash

export ANSIBLE_FORCE_COLOR=True

VENV_PATH=".venv"

if ! sudo -l 2>&1 | grep -q "NOPASSWD"; then
    echo "Error: This installer requires permanent passwordless sudo access."
    exit 1
fi

# Exit on error
set -e

sudo apt-get update
sudo apt-get install -y python3-venv

# Create venv if it doesn't exist
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
fi

$VENV_PATH/bin/pip install --upgrade pip
$VENV_PATH/bin/pip install -r requirements.txt

$VENV_PATH/bin/ansible-galaxy install -r requirements.yml

$VENV_PATH/bin/ansible-playbook -i ./inventory/local/hosts.ini -b -e "ornare_user=$USER" deploy.yml

# Harden and secure the system according to the DevSec Hardening Framework
$VENV_PATH/bin/ansible-playbook -i ./inventory/local/hosts.ini -b -e "ornare_user=$USER" hardening.yml
