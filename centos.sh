# common commands for CentOS

# list all repos
yum repolist all

# enable a repo
yum-config-manager --enable elrepo-extras

# check CentOS version or Redhat version 
cat /etc/centos-release
cat /etc/redhat-relase

# update packages
yum update
