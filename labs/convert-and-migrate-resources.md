# [<](./../README.md) Convert and migrate resources

For this lab you can use any of the previously deployed resources in the labs or create a new resource group in Azure and some resources within it. For now keep it simple and only target a single resource group.

There are detailed steps for this lab that can be followed using the [Convert and migrate resources](https://learn.microsoft.com/en-us/training/modules/migrate-azure-resources-bicep/3-exercise-convert-migrate-resources?pivots=cli) on Microsoft Learn. Depending on how confident you feel either follow those steps or the ones below.

When you try and deploy the template you will find that you need to do some refactoring an fix variables/parameters - the more resources in the group; the more complicated this will be.

---

## Challenge

* Either create a set of resources in a resource group or select an existing one
* Export the resource group to a JSON template
* Decompile the template to Bicep
* Update the variables and parameters
* Try redeploying - either into a new resource group or as an `incremental` over the existing.

---

## Outcomes

Depending on what source/target you attempted to convert you will have varying results in this lab; there may be conflicts or failures. This should help you understand how Bicep/ARM are working and what considerations you would need to have when trying this against a real workload.
