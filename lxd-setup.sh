#!/usr/bin/env bash
sudo apt-get install -y snapd
sudo systemctl enable --now snapd
sudo snap install lxd
sudo lxd init
sudo lxc launch images:ubuntu/18.04 test
sudo lxc config set test limits.memory 128MB
sudo lxc list
sudo lxc exec test -- free -m