targetScope = 'subscription'

@description('The resource group name')
param resourceGroupName string

@description('The resource group location')
param location string = deployment().location

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: location

  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }

  properties: {}
}

module sa 'modules/storage-account.bicep' = {
  name: '${deployment().name}sa'
  scope: resourceGroup

  params: {
    location: resourceGroup.location
  }
}
