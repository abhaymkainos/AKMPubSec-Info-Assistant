
param name string
param location string = resourceGroup().location
param vnetId string 


resource privateDnsZone 'Microsoft.Network/privateDnsZones@2020-06-01' = {
  name: name
  location: location
}

resource virtualNetworkLink 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2020-06-01' = {
  name: 'm/yname'
  location: location
  properties: {
    registrationEnabled: false // Set to true if you want auto-registration of VM records
    virtualNetwork: {
      id: vnetId
    }
  }
}
