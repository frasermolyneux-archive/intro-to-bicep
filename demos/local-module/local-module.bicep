// Parameters
@description('Optional. The location to deploy into')
param location string = resourceGroup().location

// Variables
var acrName = 'acr${uniqueString(resourceGroup().id)}'

// Modules
module acr './modules/acr.bicep' = {
  name: '${deployment().name}acr'

  params: {
    name: acrName
    location: location
  }
}

// Outputs
output outAcrLoginServer string = acr.outputs.outLoginServer
