#!/bin/bash

# Welcome message
echo -e "
This will install all the componenets required for the Dashboard to run locally
on the system. This process might take some long time, sit back and enjoy a cup of coffee :)\n"


# Prompt to continue
read -p "  Continue? (y/n) " ans
if [[ $ans != "y" ]]; then
  echo -e "\nQuitting...\n"
  exit
fi
echo

# Time the install process
START_TIMER=$SECONDS

echo "Locating The Directory .."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "Directory Found '$DIR'"

# Start with updating the apt-get
echo -e "Updating  apt-get ..."
sudo apt-get update --yes

# NodeJs Installation
echo "Installing NodeJs ..."
mkdir -p /home/pi/tmp
#cd /home/pi/tmp 
curl -sL https://deb.nodesource.com/setup_12.x -o /home/pi/tmp/nodesource_setup.sh
sudo bash /home/pi/tmp/nodesource_setup.sh
sudo apt-get -y install nodejs

echo $(nodejs -v)



# Ruby Dev Installation
echo "Installing Ruby-Dev ..."
sudo apt-get -y install ruby-dev


# Ruby Gems Installation
#echo "Installing Ruby-Gems ..."
#sudo apt-get -y install rubygems

#call the scrip  here 
./installruby.sh

# update the bash 
source ~/.bashrc 

# Smashing Installation 
echo "Installing Smashing ..."
gem install smashing 

# Bundler Installation
echo "Installing Bundeler ..."
gem install bundler

# Run Bundel 
echo "Updating Bundle ..."
bundle update 

# Run bundle to use it in the dashboard 
echo "Running Bundle .."
bundle 

# Check for python3 installation 
#echo "Installing Python3 .."
#sudo apt-get -y install python3

# Now run the python file to create the directory for the system service 
#echo "Running Python Script For Systemctl Service .."
#python3 createDirV1.py

#
# Now copy the file from this directory to main directory
echo "Copying Service file to main systemd directory"
sudo cp $DIR/services/dashboard.service /etc/systemd/system/

# Enable system services 
echo "Enabling Dashboard.service .."
sudo systemctl enable dashboard.service 

# Start the dashboard service now 
echo "Starting Dashboard ..."
sudo systemctl start dashboard.service 





