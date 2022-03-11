# mssql-playbooks

# To get the SQL Server Powershell modules (not needed at this point)

Install-PackageProvider -Name NuGet -Force
Install-Module -Name SqlServer -Force

ansible-galaxy collection install -r collections/requirements.yml -p collections
