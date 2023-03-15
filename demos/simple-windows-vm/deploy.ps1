# Connect-AzAccount
# Select-AzSubscription -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    
# Set variables
$resourceGroupName = "rg-simple-windows-vm-uksouth"
$location = "UK South"

# Create resource group
New-AzResourceGroup -Name $resourceGroupName -Location "$location"

# Set the admin username and password
$adminUser = "addy"
$adminPassword = Read-Host
Write-Output $adminPassword

# Deploy to resource group and provision resources
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile "simple-windows-vm.bicep" `
    -TemplateParameterObject @{adminUsername = $adminUser; adminPassword = $adminPassword }
  
# Delete the resource group
Remove-AzResourceGroup -Name $resourceGroupName -Force
