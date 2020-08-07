#!/bin/bash

echo "Locating The Directory .."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "Directory Found '$DIR'"

# Start with updating the apt-get
echo -e "Updating  apt-get ..."
sudo apt-get update --yes

# Ruby Dev Installation
echo "Installing Ruby-Dev ..."
sudo apt-get -y install ruby-dev

# Ruby Gems Installation
echo "Installing Ruby-Gems ..."
sudo apt-get -y install rubygems

# NodeJs Installation
echo "Installing NodeJs ..."
sudo apt-get -y  install nodejs

# Bundler Installation
echo "Installing Bundeler ..."
sudo apt-get -y install bundler

# Smashing Installation 
echo "Installing Smashing ..."
sudo gem install smashing 

# Run Bundel 
echo "Updating Bundle ..."
sudo bundle update 

# Run bundle to use it in the dashboard 
echo "Running Bundle .."
sudo bundle 

# Check for python3 installation 
echo "Installing Python3 .."
sudo apt-get -y install python3

# Now run the python file to create the directory for the system service 
echo "Running Python Script For Systemctl Service .."
python3 createDirV1.py

# Now copy the file from this directory to main directory
echo "Copying Service file to main systemd directory"
sudo cp $DIR/dashboard.service /etc/systemd/system/

# Enable system services 
echo "Enabling Dashboard.service .."
sudo systemctl enable dashboard.service 

# Start the dashboard service now 
echo "Starting Dashboard ..."
sudo systemctl start dashboard.service 





