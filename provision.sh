#!/usr/bin/env bash

echo "Installing Apache and setting it up..."
sudo apt update
sudo apt install -y apache2
cp -r /vagrant/html/* /var/www/html/