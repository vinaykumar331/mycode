
#!/bin/bash
yum update -y
yum install telnet -y
yum install nginx -y
service nginx start
systemctl enable nginx
