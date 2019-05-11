# script to add Java in Ubuntu e.g. DigitalOcean etc.

# install jdk
apt-get install default-jdk

# install Maven
apt-get install maven

# install Chrome (to use Selenium)
curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add

apt-get -y update

apt-get -y install google-chrome-stable

wget https://chromedriver.storage.googleapis.com/73.0.3683.68/chromedriver_linux64.zip

unzip chromedriver_linux64.zip
