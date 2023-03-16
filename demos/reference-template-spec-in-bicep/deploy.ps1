# Connect-AzAccount
# Select-AzSubscription -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    
# Set variables
$resourceGroupName = "rg-reference-template-spec-in-bicep"
$location = "UK South"

# Create resource group
New-AzResourceGroup -Name $resourceGroupName -Location "$location"

# Deploy to resource group and provision resources
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile "reference-template-spec-in-bicep.bicep"
  
# Delete the resource group
Remove-AzResourceGroup -Name $resourceGroupName -Force
