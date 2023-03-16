# az login
# az account set --subscription "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

# Set variables
$resourceGroupName = "rg-template-specs-uksouth"
$location = "UK South"
$specName = "StorageAccountTS"
$version = "1.0"

# Create resource group
az group create --name $resourceGroupName --location "$location"

# Publish the template spec
az ts create `
    --name $specName `
    --resource-group $resourceGroupName `
    --location $location `
    --display-name "Storage Account" `
    --description "This template spec creates a storage account with optional container names" `
    --version $version `
    --template-file .\modules\storage-account.bicep
