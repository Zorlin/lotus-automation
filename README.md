# lotus-automation

## Contributors
- Bob Dubois
- Anjor Kanekar
- Angelo Schalley
- Orjan Roren


## What this automation is planning to do

Automation of lotus-daemon, lotus-miner and boost installation and configuration.
This is meant to be a single server deployment for starting storage providers using sealing-as-a-service.

The various steps are split out into separate scripts. This allows steps to be rerun upon failure and for additional scripts to be added.

This installer is built for Ubuntu Server LTS (minimal version 20.04).

## High level overview of the tasks

- Installation of the software prerequisites for Lotus Daemon, Lotus Miner and Boost.
- Automation of installation of lotus-daemon, lotus-miner and boost.
- Import latest chain snapshot
- Initialize lotus-daemon and create wallets
- Initialize lotus-miner