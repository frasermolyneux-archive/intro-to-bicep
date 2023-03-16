# [<](./../../README.md) Import Existing Resources

This scenario shows how to import existing resources from Azure or ARM, this assumes the use of VS Code.

---

## Using VS Code + Bicep - 'Insert Resources'

* Create a blank .bicep file
* Ctrl + Shift + P - Insert Resources
* Enter Resource ID

---

## Using Azure Portal + Export

* Create a blank .json file
* Navigate to resource
* Select `Export Template` under `Automation`
* Copy the template into the file
* Right click on file and `Decompile into Bicep`

---

## CLI

* Execute `bicep decompile`
