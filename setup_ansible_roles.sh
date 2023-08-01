#!/bin/bash

# Check if the script is being run from the "lotus-automation" folder
if [ "$(basename "$(pwd)")" != "lotus-automation" ]; then
    echo "Please run this script from the 'lotus-automation' folder."
    exit 1
fi

# Install Ansible requirements
ansible-galaxy install -r ansible/roles/requirements.yml

# Create symbolic links for each role for development purposes
ln -sf "$(pwd)/ansible/roles/lotus_daemon" "$HOME/.ansible/roles/zorlin.lotus_daemon"
ln -sf "$(pwd)/ansible/roles/lotus_miner" "$HOME/.ansible/roles/zorlin.lotus_miner"
ln -sf "$(pwd)/ansible/roles/fil_boost" "$HOME/.ansible/roles/zorlin.fil_boost"
