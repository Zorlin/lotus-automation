# lotus-automation for ansible
This is an experimental port of lotus-automation to Ansible.

## Requirements
- A modern version of Ansible and Python3 (a specific minimum version will be specified at a later date).
- All requirements specified in the [lotus-automation README](../README.md#requirements).

## Usage
- Clone this repository.
- Copy `ansible/inventory.example` to `ansible/inventory` and edit it to suit your needs.
- Copy `ansible/group_vars/all.example` to `ansible/group_vars/all` and edit it to suit your needs.
- Change into the `ansible` directory.
- If this is your first time running lotus-automation for Ansible on this machine, run `ansible-galaxy install -r roles/requirements.yml && ansible-galaxy install -r collections/requirements.yml`
- Now run `ansible-playbook deploy.yml` to run the playbook and deploy your Lotus node.
- The playbook will automatically deploy everything, and ask you questions if it needs any more information from you. If you run into any issues, please let us know by opening an issue on this repository.

## Notes
- This is a work in progress and is not yet ready for use.
- Ansible Molecule is to be used for testing and developing the individual roles.