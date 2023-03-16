# [<](./../README.md) Using loops and conditions

Use the scripts and Bicep files that are in the [simple-storage-account](./../demos/simple-storage-account/simple-storage-account.md) demo as a starting point for this lab.

---

## Challenge

You may want to deploy multiple storage accounts in a single deployment; we are going to start with adding a parameter to the deployment that allows you to specify the number of storage accounts to deploy.

Here are some starting code snippets for you to use:

* `[for i in range(0, storageLoopCount): { }]`
* `'${i}sa${uniqueString(resourceGroup().id)}'`

Once you have that working; have a look at the output and how it has changed.

We have now added a loop into the deployment, but we have not yet added any conditions. We can use the `if` keyword to add conditions to our deployment. For example, we can add a `deployStorageAccounts` bool parameter and add `if (deployStorageAccounts)` within our loop. Try adding that now and see what happens (See final hint if required).

If you get on well with the above, consider the common scenario where a deployment may need to deploy the same configured resource to many regions and how a loop can be used to achieve this. Hint: You may need to look at the [Loops Syntax](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/loops#loop-syntax) and also update the `locations` parameter.

---

## Hints

<details><summary>Error: Code=InvalidTemplate</summary>
<p>

If you removed the `storageAccountName` parameter from the Bicep file you will also need to remove it from the `simple-storage-account.parameters.json` file.

</p>
</details>

<details><summary>Parameters Hint</summary>
<p>

```bicep
@description('Storage loop counter')
@minValue(1)
param storageLoopCount int = 3
```

</p>
</details>

<details><summary>Output Hint</summary>
<p>

```bicep
output storageAccounts array = [for i in range(0, storageLoopCount): {
  id: sa[i].id
  name:sa[i].name
  blobEndpoint: sa[i].properties.primaryEndpoints.blob
  status: sa[i].properties.statusOfPrimary
}]
```

</p>
</details>

<details><summary>Condition Hint</summary>
<p>

Add the parameter:

```bicep
@description('Do we deploy the storage account or not?')
param deployStorageAccount bool = true
```

Update the loop:

```bicep
output storageAccounts array = [for i in range(0, storageLoopCount): {
  id: sa[i].id
  name:sa[i].name
  blobEndpoint: sa[i].properties.primaryEndpoints.blob
  status: sa[i].properties.statusOfPrimary
}]
```

Note that the outputs will either error (if this is a greenfield deployment) or wrong (if brownfield) as we are looping using a count.

</p>
</details>