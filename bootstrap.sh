#! /usr/bin/env bash

echo -e "\n--- Adding Microsoft Repository ---\n"
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server.list > /etc/apt/sources.list.d/mssql-server.list

echo -e "\n--- Updating System ---\n"
apt-get update > /dev/null 2>&1
apt-get upgrade > /dev/null 2>&1

echo -e "\n--- Installing Microsoft SQL Server ---\n"
apt-get install -y mssql-server > /dev/null 2>&1

echo -e "\n--- Install Complete FOLLOW THESE INSTRUCTIONS ---\n"

echo -e "\nNow SSH into machine and run the command:\nsudo /opt/mssql/bin/sqlservr-setup\n"

echo -e "\nVerify service is running by typing systemctl status mssql-server";
