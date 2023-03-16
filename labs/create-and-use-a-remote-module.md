# [<](./../README.md) Create and use a remote module

For this lab we are going to bring together some of the demo resources and previous labs. We will need to provision an Azure Container Registry using the [local-module](./../demos/local-module/local-module.bicep) resources, then publish the local modules created in the [create-and-use-a-local-module](./../labs/create-and-use-a-local-module.md) lab using the publish script from the [publish-remote-module](./../demos/publish-remote-module.md) demo.

---

## Challenge

* Provision the ACR using the [local-module](./../demos/local-module/local-module.bicep)
* Publish the modules from the [create-and-use-a-local-module](./../labs/create-and-use-a-local-module.md) lab
* Either modify a previous template or create a new one to use the remote module
  * You may need to add a `bicepconfig.json` such as the one [here](./../demos/using-a-remote-module/bicepconfig.json)
