#!/bin/bash

echo "Choose an option:"
echo "1. Install Node Exporter and Nvidia Exporter"
echo "2. Install Node Exporter Only"
echo "3. Install Nvidia Exporter Only"
read -p "Enter your choice (1 or 2 or 3): " choice

case $choice in
    1)
        echo "Install Node Exporter and Nvidia Exporter"
        chmod +x ./scripts/*
        ./scripts/node-exporter.sh
        ./scripts/nvidia-exporter.sh
        ;;
    2)
        echo "Install Node Exporter Only"
        chmod +x ./scripts/*
        ./scripts/node-exporter.sh
        ;;
    3)
        echo "Install Nvidia Exporter Only"
        chmod +x ./scripts/*
        ./scripts/nvidia-exporter.sh
        ;;
    *)
        echo "Invalid choice. Please enter 1 or 2 or 3."
        ;;
esac
