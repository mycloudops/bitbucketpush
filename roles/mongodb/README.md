MongoDB
========

Playbook to install and configure Mongodb on Redhat/Centos,Amazon Linux,Ubuntu

Requirement
-----------

Redhat/Centos,Amazon Linux,Ubuntu 

Playbook Eample
---------------



```

hosts: all
roles:
- mongodb
- tests
```

Role Variables
--------------
mongodb/vars/all



```
# Installation Variables 

#tar file  for RedHat  
redhat_url: https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-rhel70-3.4.2.tgz

------------------------

#tar file for Ubuntu
ubuntu_url: https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-3.4.2.tgz

------------------------

#tar file for amazon
amazon_url: https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-amazon-3.4.2.tgz

Dependencies
------------
 NONE
 
License
-------
 NONE
 
Author
-----
Mantri Goutam @gautam.mantri@gmail.com
