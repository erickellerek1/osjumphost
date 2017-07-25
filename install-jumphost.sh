#!/bin/sh
sudo cp -f ./setup.vlan.sh /usr/local/bin/
sudo cp -f ./jumphostvlan.service /lib/systemd/system/jumphostvlan.service
sudo cp -f ./jumphost.env /etc/default/jumphost
sudo systemctl daemon-reload
sudo systemctl enable jumphostvlan

