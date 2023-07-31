# lotus-automation for ansible
This is an experimental port of lotus-automation to Ansible.

## Requirements
- A modern version of Ansible and Python3 (a specific minimum version will be specified at a later date).
- All requirements specified in the [lotus-automation README](../README.md#requirements).

## Usage
- Clone this repository and `cd` into it
```
git clone https://github.com/Zorlin/lotus-automation.git && cd lotus-automation
```
- Copy `ansible/inventory.example` to `ansible/inventory` and edit it to suit your needs.
```
cp ansible/inventory.example ansible/inventory && editor ansible/inventory
```
- Copy `ansible/group_vars/all.example` to `ansible/group_vars/all` and edit it to suit your needs.
```
cp ansible/group_vars/all.example ansible/group_vars/all && editor ansible/group_vars/all
```
- Change into the `ansible` directory.
```
cd ansible
```
- If this is your first time running lotus-automation for Ansible on this machine, run the Ansible Galaxy install process.
```
ansible-galaxy install -r roles/requirements.yml && ansible-galaxy install -r collections/requirements.yml
```
- Now run `ansible-playbook deploy.yml` to run the playbook and deploy your Lotus node.
- The playbook will automatically deploy everything, and ask you questions if it needs any more information from you. If you run into any issues, please let us know by opening an issue on this repository.

## Secure boot on Ubuntu 22.04
If you are using Ubuntu 22.04 with Secure Boot enabled (likely if you are on a modern UEFI machine) - due to a bug in the NVIDIA driver packages (or possibly their Ansible role), you may find yourself unable to use the NVIDIA driver after installation. If you run into this, please run `sudo dpkg-reconfigure nvidia-dkms-525-server` (replacing 525 with your driver version) and follow the steps, then reboot and select "Enroll MOK", then reboot one last time.

## Notes
- This is a work in progress and is not yet ready for use.
- Ansible Molecule is to be used for testing and developing the individual roles.
