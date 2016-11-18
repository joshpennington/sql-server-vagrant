#! /usr/bin/env bash

echo -e "\n--- Adding Microsoft Repositories ---\n"
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server.list > /etc/apt/sources.list.d/mssql-server.list
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/msprod.list

echo -e "\n--- Updating System ---\n"
sudo apt-get update > /dev/null 2>&1
sudo apt-get upgrade > /dev/null 2>&1

echo -e "\n--- Installing Microsoft SQL Server ---\n"
sudo apt-get install -y mssql-server > /dev/null 2>&1

echo -e "\n--- Install Complete FOLLOW THESE INSTRUCTIONS ---\n"

echo -e "\nNow SSH into machine and run the command:\nsudo /opt/mssql/bin/sqlservr-setup\n"

echo -e "\nVerify service is running by typing systemctl status mssql-server";

echo -e "\nYou can install MSSQL Server Tools by typing sudo apt-get install mssql-tools";
