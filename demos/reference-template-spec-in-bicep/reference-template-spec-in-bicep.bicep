// Parameters
@description('Optional. The location to deploy into')
param location string = resourceGroup().location

// Variables
var storageAccountName = 'sa${uniqueString(resourceGroup().id)}'
var containerNames = [ 'alpha', 'bravo', 'charlie' ]

// Modules
module sa 'ts:ecc74148-1a84-4ec7-99bb-d26aba7f9c0d/rg-template-specs-uksouth/StorageAccountTS:1.0' = {
  name: '${deployment().name}sa'

  params: {
    storageAccountName: storageAccountName
    location: location
    containerNames: containerNames
  }
}
