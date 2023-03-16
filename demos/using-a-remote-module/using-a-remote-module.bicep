// Parameters
@description('Optional. The location to deploy into')
param location string = resourceGroup().location

// Variables
var storageAccountName = 'sa${uniqueString(resourceGroup().id)}'
var containerNames = [ 'alpha', 'bravo', 'charlie' ]

// Modules
module sa 'br/azureregistry:storage/storageaccount:v1.0' = {
  name: '${deployment().name}sa'

  params: {
    storageAccountName: storageAccountName
    location: location
    containerNames: containerNames
  }
}
