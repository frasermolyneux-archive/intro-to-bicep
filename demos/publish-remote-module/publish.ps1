# az login
# az account set --subscription "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

$acrName = "acrwp6bm2dbsgzfk" # Update before running this demo

# Publish properties
$modulePublishName = "storageaccount"
$modulePublishPath = "bicep/modules/storage/$modulePublishName"
$modulePublishTag = "v1.0"

az bicep publish --file './modules/storage-account.bicep' --target br:$acrname.azurecr.io/$($modulePublishPath):$modulePublishTag