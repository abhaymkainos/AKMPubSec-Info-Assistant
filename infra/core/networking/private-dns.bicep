
param name string
param location string = 'global'
param vnetId string 
param name2 string = 'mylinknetwork'

resource privateDnsZone 'Microsoft.Network/privateDnsZones@2020-06-01' = {
  name: name
  location: location
}

resource virtualNetworkLink 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2020-06-01' = {
  name: name2
  location: location
  properties: {
    registrationEnabled: false 
    virtualNetwork: {
      id: vnetId
    }
  }
}
