# MS SQL Server Vagrant Box

Lets you try out SQL Server for Linux (Ubuntu 16.04) the easiest way possible.

Just navigate to the repository's cloned directory and type `vagrant up` to get
started.

Once you are up and running you have to ssh into the VM and run the setup for
SQL Server. This is accomplished by typing `vagrant ssh` and then
`sudo /opt/mssql/bin/sqlservr-setup`

You will then be asked to accept the EULA, assign the password for the sa user,
if you want to start SQL Server and then finally if you want it to start
automatically.

Once this is done, you can verify SQL Server is running by typing
`systemctl status mssql-server`

After that just connect to it on localhost like you would any other SQL Server
instance.

You can optionally install SQL Server Tools by SSHing into the machine and
typing `sudo apt-get install mssql-tools` (There are a few EULA screen otherwise
I would have done this for you automatically)
