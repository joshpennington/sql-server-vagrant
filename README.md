# MS SQL Server Vagrant Box

Lets you try out SQL Server for Linux (Ubuntu 16.04) the easiest way possible.

Just `vagrant up` to get started. Once running, SSH into the VM and type:

sudo /opt/mssql/bin/sqlservr-setup

To verify if the service is running type:

systemctl status mssql-server

Unfortunately there is not a way to automatically setup SQL Server so you have
to enter the commands up top.
