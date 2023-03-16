# Connect-AzAccount
# Select-AzSubscription -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    
# Set variables
$location = "UK South"

# Deploy to resource group and provision resources
New-AzSubscriptionDeployment `
  -Location $location `
  -TemplateFile "multi-scoped-deploy.bicep" `
  -TemplateParameterFile "multi-scoped-deploy.parameters.json"
