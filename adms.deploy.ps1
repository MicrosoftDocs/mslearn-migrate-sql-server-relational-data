# Executes the az commands
az login

# Set Account
# az account set --subscription "Visual Studio Ultimate with MSDN"
# az account set --subscription "Pay-As-You-Go"
az account set --subscription "Azure Free Trial"

# Original (for reference)
# az group create --location "Central US" --name admsdemo3
# az group deployment create --name admsdemodeploy --resource-group admsdemo3 --template-uri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-azure-database-migration-service/azuredeploy.json --parameters https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-azure-database-migration-service/azuredeploy.parameters.json

az group create --location centralus --name admsdemorg
az group deployment create --name admsdemodeploy --resource-group admsdemorg --template-file "C:\Users\arcan\OneDrive\Pluralsight\Azure Migrate your SQL Data to Azure SQL\Microsoft-Written-PoC\migrate-sql-server-relational-data\demos\adms.deploy.json" --parameters "C:\Users\arcan\OneDrive\Pluralsight\Azure Migrate your SQL Data to Azure SQL\Microsoft-Written-PoC\migrate-sql-server-relational-data\demos\adms.parameters.json"



#------------------------------------------------------------------------------
# This section is just some useful helper commands for use in dev
#------------------------------------------------------------------------------
# To reset when done, delete the group
az group delete --name admsdemorg

# List locations
az account list-locations --output table