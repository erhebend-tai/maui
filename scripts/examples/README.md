# Examples: Using the .NET MAUI Component Catalog

This directory contains examples showing how to consume the `maui-catalog.json` file programmatically.

## PowerShell Example

```powershell
# Load the catalog
$catalog = Get-Content ../../maui-catalog.json | ConvertFrom-Json

# Display summary
Write-Host "=== .NET MAUI Component Catalog ==="
Write-Host "Framework: $($catalog.framework)"
Write-Host "Generated: $($catalog.generatedDate)"
Write-Host ""

foreach ($category in $catalog.categories.PSObject.Properties) {
    $count = $category.Value.Count
    Write-Host "$($category.Name): $count items"
}

# Find all Android-compatible controls
Write-Host "`n=== Android Controls ==="
$catalog.categories.controls | Where-Object { 
    $_.platforms -contains "Android" 
} | ForEach-Object {
    Write-Host "- $($_.name): $($_.description)"
}
```

## Python Example

```python
import json

# Load the catalog
with open('../../maui-catalog.json', 'r') as f:
    catalog = json.load(f)

print(f"=== {catalog['framework']} Component Catalog ===")
print(f"Version: {catalog['version']}")

# Display category summary
for category, items in catalog['categories'].items():
    print(f"{category}: {len(items)} items")
```

## C# Example

See CATALOG.md in the repository root for a complete C# example.

## JavaScript/Node.js Example

```javascript
const fs = require('fs');
const catalog = JSON.parse(fs.readFileSync('../../maui-catalog.json', 'utf8'));

console.log(`=== ${catalog.framework} Component Catalog ===`);
for (const [category, items] of Object.entries(catalog.categories)) {
    console.log(`${category}: ${items.length} items`);
}
```
