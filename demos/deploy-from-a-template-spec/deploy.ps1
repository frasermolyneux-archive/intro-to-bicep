# az login
# az account set --subscription "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

# Set variables
$resourceGroupName = "rg-deploy-from-a-template-spec"
$location = "UK South"
$specName = "StorageAccountTS"
$version = "1.0"

# Create resource group
az group create --name $resourceGroupName --location "$location"

# Get the template spec Id
$templateSpecVersionResourceId = $(az ts show --name $specName --resource-group 'rg-template-specs-uksouth' --version $version --query id --output tsv)

# Deploy from a template spec
az deployment group create --resource-group $resourceGroupName --template-spec $templateSpecVersionResourceId