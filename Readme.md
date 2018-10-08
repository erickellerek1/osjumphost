# Repository was migrated to internal bitbucket. To get access please contact with Roche DevTools Support
# Jump host helper service

## Rational

In order to reach certain host configured with specific VLAN ids, one need this small service to tag the network frame with the appropriate VLAN id.

## Configuration

Please edit the **jumphost.env** file to fit to your setup.

## Installation

```
./install-jumphost.sh
```

## Usage

```
sudo systemctl start jumphostvlan.service
sudo systemctl stop jumphostvlan.service
```
