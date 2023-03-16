# Connect-AzAccount
# Select-AzSubscription -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    
# Set variables
$location = "UK South"

# Deploy to resource group and provision resources
New-AzSubscriptionDeployment `
  -Location $location `
  -TemplateFile "sub-scoped-deploy.bicep" `
  -TemplateParameterFile "sub-scoped-deploy.parameters.json"
