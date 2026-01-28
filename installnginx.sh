#!/bin/bash

# Run as root check
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or use sudo"
  exit 1
fi

echo "Updating system..."
yum update -y

echo "Installing nginx..."
yum install nginx -y

echo "Starting nginx..."
systemctl start nginx

echo "Enabling nginx on boot..."
systemctl enable nginx

echo "Nginx status:"
systemctl status nginx --no-pager

echo "Nginx installed successfully!"