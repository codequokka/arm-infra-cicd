#!/bin/bash

az deployment sub create --location japaneast --template-file templates/resourceGroup.json --parameters parameters/resourceGroup.json

az deployment group create --resource-group ARMInfraCICD-Dev-RG  --template-file templates/virtualNetwork.json --parameters parameters/virtualNetwork.json

az deployment group create --resource-group ARMInfraCICD-Dev-RG --template-file templates/networkSecurityGroups.json --parameters parameters/networkSecurityGroups.json

az deployment group create --resource-group ARMInfraCICD-Dev-RG --template-file templates/virtualMachines.json
