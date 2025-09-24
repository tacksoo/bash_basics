# adjust time zone 
sudo raspi-config

# refresh the list of available packages to install
sudo apt update

# allow upgrade to new version
sudo apt --allow-releaseinfo-change update

# install Java 17
sudo apt install openjdk-17-jdk

