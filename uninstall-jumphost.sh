#!/bin/sh
sudo systemctl stopjumphostvlan
sudo systemctl disable jumphostvlan
sudo systemctl daemon-reload
sudo rm -f /usr/local/bin/setup.vlan.sh /etc/default/jumphost /lib/systemd/system/jumphostvlan.service

