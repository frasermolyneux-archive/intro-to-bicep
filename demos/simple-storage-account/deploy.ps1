# Connect-AzAccount
# Select-AzSubscription -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    
# Set variables
$resourceGroupName = "rg-simple-storage-uksouth"
$location = "UK South"

# Create resource group
New-AzResourceGroup -Name $resourceGroupName -Location "$location"

# Deploy to resource group and provision resources
New-AzResourceGroupDeployment `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile "simple-storage-account.bicep" `
  -TemplateParameterFile "simple-storage-account.parameters.json"
  
# Delete the resource group
Remove-AzResourceGroup -Name $resourceGroupName -Force
