azure group create -n ExampleResourceGroup -l "West US"
azure group deployment create -f azuredeploy.json -e azuredeploy.parameters.json -g ExampleResourceGroup -n ExampleDeployment
