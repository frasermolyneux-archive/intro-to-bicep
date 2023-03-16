# [<](./../README.md) Add parameters and variables

Use the scripts and Bicep files that are in the [simple-storage-account](./../demos/simple-storage-account/simple-storage-account.md) demo as a starting point for this lab.

---

## Challenge

For a full list of what properties are available for the `Microsoft.Storage/storageAccounts` resource see the [Azure Resource Manager template reference](https://learn.microsoft.com/en-us/azure/templates/microsoft.storage/2022-09-01/storageaccounts?pivots=deployment-language-bicep).

* Try adding the `supportsHttpsTrafficOnly` property and default it to `true` using a parameter.
* Try adding the `minimumTlsVersion` property and default it to `TLS1_2` using a parameter.

If you get on well with the above, try adding some tags to the resource and declare them in the `simple-storage-account.parameters.json` file. Hint: You will need to use the `object` type for the parameter.

---

## Hints

<details><summary>Parameters Hint</summary>
<p>

```bicep
@description('Supports https traffic only')
param supportsHttpsTrafficOnly bool = true

@description('Minumum TLS version')
@allowed([
'TLS1_0'
'TLS1_1'
'TLS1_2'
])
param minimumTlsVersion string = 'TLS1_2'
```

</p>
</details>

<details><summary>Properties Hint</summary>
<p>

```bicep
  properties: {
    supportsHttpsTrafficOnly: supportsHttpsTrafficOnly
    minimumTlsVersion: minimumTlsVersion
  }
```

</p>
</details>
