targetScope = 'resourceGroup'

@description('Optional: Storage account type')
param storageAccountType string = 'Standard_LRS'

@description('Optional: Location for the storage account')
param location string = resourceGroup().location

@description('Optional: The name of the storage account')
param storageAccountName string = 'sa${uniqueString(resourceGroup().id)}'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageAccountType
  }
  kind: 'StorageV2'
  properties: {}
}

output storageAccountName string = storageAccountName
output storageAccountId string = storageAccount.id
