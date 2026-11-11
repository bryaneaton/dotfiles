#!/bin/bash

# Function to check internet connectivity
check_internet() {
    # Ping a reliable server (e.g., Google's DNS server) to check connectivity
    if ping -c 1 8.8.8.8 &> /dev/null; then
        return 0  # Internet is accessible
    else
        return 1  # No internet access
    fi
}

# Function to run nmcli command
run_nmcli() {
    echo "Internet access is down. Running nmcli command..."
    # Replace this with your actual nmcli command
    nmcli dev wifi connect AlexisAndSarge
  }

run_ethernet() {
  echo "Internet access is down. Running nmcli command..."
  # Replace this with your actual nmcli command
  nmcli connection down "Wired connection 1" && nmcli connection up "Wired connection 1"
}

# Main script logic
if check_internet; then
    echo "Internet is accessible."
else
    run_ethernet
fi
