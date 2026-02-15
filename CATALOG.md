# .NET MAUI Component Catalog

This document describes the machine-readable catalog of all available .NET MAUI components, controls, and APIs.

## Overview

The `maui-catalog.json` file provides a comprehensive, machine-readable inventory of all .NET MAUI components organized by category. This catalog is useful for:

- **Documentation tools**: Automatically generate API documentation
- **IDE integrations**: Provide IntelliSense and code completion
- **Code generators**: Build scaffolding tools
- **Analysis tools**: Understand the framework's surface area
- **Learning resources**: Browse available components systematically

## File Location

- **Catalog File**: `maui-catalog.json` (root of repository)
- **Generation Script**: `scripts/generate-catalog.ps1`

## File Structure

The catalog is organized into the following categories:

### Controls (24 items)
UI controls that users interact with:
- ActivityIndicator, Border, BoxView, Button, CheckBox, DatePicker, Editor, Entry, GraphicsView, Image, ImageButton, IndicatorView, Label, Picker, ProgressBar, RadioButton, RefreshView, SearchBar, Slider, Stepper, Switch, TimePicker, WebView, HybridWebView

### Layouts (7 items)
Container controls that arrange child elements:
- AbsoluteLayout, BindableLayout, FlexLayout, Grid, HorizontalStackLayout, StackLayout, VerticalStackLayout

### Pages (5 items)
Page types for application navigation:
- ContentPage, FlyoutPage, NavigationPage, TabbedPage, Shell

### Cells (5 items)
Cell types for list and table views:
- EntryCell, ImageCell, SwitchCell, TextCell, ViewCell

### Views (8 items)
Container and display views:
- CarouselView, CollectionView, ContentView, Frame, ListView, ScrollView, SwipeView, TableView

### Essentials (33 items)
Platform API wrappers:
- Accelerometer, AppActions, AppInfo, Battery, Clipboard, Compass, Connectivity, Contacts, DeviceDisplay, DeviceInfo, Email, FilePicker, FileSystem, Flashlight, Geocoding, Geolocation, Gyroscope, Haptic Feedback, Launcher, Magnetometer, MainThread, Map, Media, Permissions, PhoneDialer, Preferences, Screenshot, SecureStorage, Share, Sms, TextToSpeech, Vibration, WebAuthenticator

### Graphics (8 items)
2D graphics and drawing:
- Canvas, Colors, Fonts, Images, Paint, Patterns, Shapes, Text

### Blazor (2 items)
Blazor hybrid components:
- BlazorWebView, RootComponents

## Schema

Each component entry includes:

```json
{
  "name": "ComponentName",
  "namespace": "Microsoft.Maui.Controls",
  "description": "Brief description of the component",
  "platforms": ["Android", "iOS", "MacCatalyst", "Windows", "Tizen"]
}
```

### Fields

- **name**: The component's class name
- **namespace**: The .NET namespace containing the component
- **description**: A brief description of the component's purpose
- **platforms**: Array of supported platforms

## Supported Platforms

The catalog tracks support for the following platforms:

- **Android**: Android mobile devices
- **iOS**: iPhone and iPad devices
- **MacCatalyst**: macOS desktop via Catalyst
- **Windows**: Windows desktop via WinUI 3
- **Tizen**: Samsung Tizen devices

## Generating the Catalog

To regenerate the catalog with updated information:

```bash
pwsh scripts/generate-catalog.ps1
```

This will create/update `maui-catalog.json` in the repository root.

## Consuming the Catalog

### PowerShell Example

```powershell
$catalog = Get-Content maui-catalog.json | ConvertFrom-Json

# List all controls
$catalog.categories.controls | Format-Table name, namespace

# Find controls available on all platforms
$catalog.categories.controls | Where-Object { 
    $_.platforms.Count -eq 5 
} | Select-Object name
```

### C# Example

```csharp
using System.Text.Json;

var json = File.ReadAllText("maui-catalog.json");
var catalog = JsonSerializer.Deserialize<Catalog>(json);

// List all essentials APIs
foreach (var api in catalog.Categories.Essentials)
{
    Console.WriteLine($"{api.Name} - {api.Description}");
}
```

### Python Example

```python
import json

with open('maui-catalog.json') as f:
    catalog = json.load(f)

# Find Android-only features
for category, items in catalog['categories'].items():
    android_only = [
        item['name'] for item in items 
        if 'Android' in item['platforms'] and len(item['platforms']) == 1
    ]
    if android_only:
        print(f"{category}: {android_only}")
```

## Version

**Current Version**: 1.0.0

The catalog includes a `version` field and `generatedDate` timestamp for tracking changes.

## Contributing

To add new components to the catalog:

1. Edit `scripts/generate-catalog.ps1`
2. Add the component to the appropriate category array
3. Run the generation script
4. Verify the output in `maui-catalog.json`
5. Submit a pull request

## Related Resources

- [.NET MAUI Documentation](https://docs.microsoft.com/dotnet/maui)
- [API Reference](https://docs.microsoft.com/dotnet/api/?view=net-maui-8.0)
- [GitHub Repository](https://github.com/dotnet/maui)
