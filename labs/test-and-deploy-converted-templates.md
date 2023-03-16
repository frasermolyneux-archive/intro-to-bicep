# [<](./../README.md) Test and deploy converted templates

This lab follows on from [convert-and-migrate-resources](./../labs/convert-and-migrate-resources.md). Depending on the success you had this will aide you in discovering what went wrong and how you can validate the templates you are applying.

There is some supplementary information on the [Test and deploy your converted template](https://learn.microsoft.com/en-au/training/modules/migrate-azure-resources-bicep/7-exercise-test-deploy-converted-template?tabs=screenshot&pivots=cli) exercise on Microsoft Learn.

---

## Challenge

* Update the deploy script that you are using with a `what-if` stage
  * For PowerShell add the `-WhatIf` onto the `New-AzResourceGroupDeployment` command
  * For Azure CLI use the `what-if` subcommand instead of `create` e.g. `az deployment group what-if`
