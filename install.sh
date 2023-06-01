#!/usr/bin/env bash

set -x
set -e
shopt -s nullglob

run_task() {
  TASK=$1

  chmod +x ./deploy/$TASK
  bash -i ./deploy/$TASK
}

press_key() {
  read -n 1 -s -r -p "Press any key to continue
"
}

echo "Installing lotus prerequisites..."
run_task 01-lotus-prereqs.sh
press_key

echo "Installing lotus..."
run_task 02-lotus-install.sh
press_key

echo "Importing lotus snapshot..."
run_task 03-lotus-import-snapshot.sh
press_key

echo "Initializing lotus..."
run_task 04-lotus-initialize.sh
press_key

echo "Initializing lotus miner..."
run_task 05-lotus-miner-initialize.sh
press_key

echo "Configuring lotus miner..."
run_task 06-configure-miner.sh
press_key

echo "Installing Boost..."
run_task 07-install-boost.sh
press_key

echo "Initializing Boost..."
run_task 08-initialize-boost.sh
press_key

echo "Configuring Boost..."
run_task 09-configure-boost.sh
press_key

echo "Configuring NGINX..."
run_task 10-configure-reverse-proxy.sh
press_key

echo "Configuring systemd..."
run_task 11-systemd-unit-files.sh
press_key

echo "Cleaning up..."
run_task 12-cleanup.sh

echo "Done!"
