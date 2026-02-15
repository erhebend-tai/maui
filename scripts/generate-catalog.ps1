#!/usr/bin/env pwsh
# Script to generate a machine-readable catalog of .NET MAUI components

$repoRoot = Split-Path $PSScriptRoot -Parent
$outputPath = Join-Path $repoRoot "maui-catalog.json"

Write-Host "Generating .NET MAUI component catalog..."

# Define the catalog structure
$catalog = @{
    "version" = "1.0.0"
    "generatedDate" = (Get-Date -Format "o")
    "framework" = ".NET MAUI"
    "categories" = @{
        "controls" = @()
        "layouts" = @()
        "pages" = @()
        "cells" = @()
        "views" = @()
        "essentials" = @()
        "graphics" = @()
        "blazor" = @()
    }
}

# Controls
$controls = @(
    @{ name = "ActivityIndicator"; namespace = "Microsoft.Maui.Controls"; description = "Displays an activity indicator to show that the application is engaged in a lengthy activity"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Border"; namespace = "Microsoft.Maui.Controls"; description = "Provides a border, background, and corner radius around a single child element"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "BoxView"; namespace = "Microsoft.Maui.Controls"; description = "Draws a filled rectangle of a specified color"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Button"; namespace = "Microsoft.Maui.Controls"; description = "A control that responds to touch input"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "CheckBox"; namespace = "Microsoft.Maui.Controls"; description = "A control that can be toggled between checked and unchecked states"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "DatePicker"; namespace = "Microsoft.Maui.Controls"; description = "Allows the user to select a date"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Editor"; namespace = "Microsoft.Maui.Controls"; description = "A multi-line text editor control"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Entry"; namespace = "Microsoft.Maui.Controls"; description = "A single-line text input control"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "GraphicsView"; namespace = "Microsoft.Maui.Controls"; description = "Provides a canvas on which 2D graphics can be drawn using drawing commands"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Image"; namespace = "Microsoft.Maui.Controls"; description = "Displays an image from a file, URI, or stream"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "ImageButton"; namespace = "Microsoft.Maui.Controls"; description = "A button that displays an image and responds to touch input"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "IndicatorView"; namespace = "Microsoft.Maui.Controls"; description = "Displays indicators that represent the number of items in a CarouselView"; platforms = @("Android", "iOS", "MacCatalyst", "Windows") }
    @{ name = "Label"; namespace = "Microsoft.Maui.Controls"; description = "Displays single or multi-line text"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Picker"; namespace = "Microsoft.Maui.Controls"; description = "Allows the user to select an item from a list of text strings"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "ProgressBar"; namespace = "Microsoft.Maui.Controls"; description = "Visually represents progress as a horizontal bar"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "RadioButton"; namespace = "Microsoft.Maui.Controls"; description = "Enables the user to select one option from a set"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "RefreshView"; namespace = "Microsoft.Maui.Controls"; description = "Provides pull-to-refresh functionality"; platforms = @("Android", "iOS", "MacCatalyst", "Windows") }
    @{ name = "SearchBar"; namespace = "Microsoft.Maui.Controls"; description = "Accepts user input used to initiate a search"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Slider"; namespace = "Microsoft.Maui.Controls"; description = "Allows the user to select a value from a continuous range"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Stepper"; namespace = "Microsoft.Maui.Controls"; description = "Allows the user to select a numeric value from a range by tapping buttons"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Switch"; namespace = "Microsoft.Maui.Controls"; description = "A control that can be toggled between on and off states"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "TimePicker"; namespace = "Microsoft.Maui.Controls"; description = "Allows the user to select a time"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "WebView"; namespace = "Microsoft.Maui.Controls"; description = "Displays HTML content or web pages"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "HybridWebView"; namespace = "Microsoft.Maui.Controls"; description = "Enables hosting arbitrary HTML/CSS/JavaScript content in a web view, and enables communication between the code in the web view and the code in the app"; platforms = @("Android", "iOS", "MacCatalyst", "Windows") }
)

$catalog.categories.controls = $controls

# Layouts
$layouts = @(
    @{ name = "AbsoluteLayout"; namespace = "Microsoft.Maui.Controls"; description = "Positions child elements at specific locations relative to the layout"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "BindableLayout"; namespace = "Microsoft.Maui.Controls"; description = "Enables any layout class that derives from Layout to generate its content by binding to a collection of items"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "FlexLayout"; namespace = "Microsoft.Maui.Controls"; description = "Arranges child elements in rows or columns with flexible sizing options"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Grid"; namespace = "Microsoft.Maui.Controls"; description = "Arranges child elements in rows and columns"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "HorizontalStackLayout"; namespace = "Microsoft.Maui.Controls"; description = "Arranges child elements horizontally in a single line"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "StackLayout"; namespace = "Microsoft.Maui.Controls"; description = "Arranges child elements vertically or horizontally in a stack"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "VerticalStackLayout"; namespace = "Microsoft.Maui.Controls"; description = "Arranges child elements vertically in a single line"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
)

$catalog.categories.layouts = $layouts

# Pages
$pages = @(
    @{ name = "ContentPage"; namespace = "Microsoft.Maui.Controls"; description = "Displays a single view"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "FlyoutPage"; namespace = "Microsoft.Maui.Controls"; description = "Manages two related pages - a flyout page that presents items, and a detail page that displays details about items on the flyout page"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "NavigationPage"; namespace = "Microsoft.Maui.Controls"; description = "Provides hierarchical navigation with back button support"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "TabbedPage"; namespace = "Microsoft.Maui.Controls"; description = "Displays tabs across the top or bottom of the screen that allow navigation between child pages"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Shell"; namespace = "Microsoft.Maui.Controls"; description = "Provides a simplified navigation experience with flyout, tabs, and URI-based navigation"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
)

$catalog.categories.pages = $pages

# Cells
$cells = @(
    @{ name = "EntryCell"; namespace = "Microsoft.Maui.Controls"; description = "Combines a label with an entry control, typically used in TableView"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "ImageCell"; namespace = "Microsoft.Maui.Controls"; description = "Displays an image with text and detail text, typically used in ListView"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "SwitchCell"; namespace = "Microsoft.Maui.Controls"; description = "Combines a label with a switch control, typically used in TableView"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "TextCell"; namespace = "Microsoft.Maui.Controls"; description = "Displays text and detail text, typically used in ListView or TableView"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "ViewCell"; namespace = "Microsoft.Maui.Controls"; description = "Displays a custom view, typically used in ListView or TableView"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
)

$catalog.categories.cells = $cells

# Views
$views = @(
    @{ name = "CarouselView"; namespace = "Microsoft.Maui.Controls"; description = "Displays a scrollable list of data items in a carousel layout"; platforms = @("Android", "iOS", "MacCatalyst", "Windows") }
    @{ name = "CollectionView"; namespace = "Microsoft.Maui.Controls"; description = "Displays a scrollable list of selectable data items using different layout specifications"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "ContentView"; namespace = "Microsoft.Maui.Controls"; description = "A control that contains a single child element"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Frame"; namespace = "Microsoft.Maui.Controls"; description = "A layout that wraps a view or layout with a border and shadow (Obsolete: use Border instead)"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "ListView"; namespace = "Microsoft.Maui.Controls"; description = "Displays a scrollable list of selectable data items"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "ScrollView"; namespace = "Microsoft.Maui.Controls"; description = "Provides a scrolling container for content that exceeds the visible area"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "SwipeView"; namespace = "Microsoft.Maui.Controls"; description = "Wraps an item and provides context menu items revealed by a swipe gesture"; platforms = @("Android", "iOS", "MacCatalyst", "Windows") }
    @{ name = "TableView"; namespace = "Microsoft.Maui.Controls"; description = "Displays a table of scrollable items organized into sections"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
)

$catalog.categories.views = $views

# Essentials
$essentials = @(
    @{ name = "Accelerometer"; namespace = "Microsoft.Maui.Devices.Sensors"; description = "Monitors the device's accelerometer sensor to detect changes in movement"; platforms = @("Android", "iOS", "Windows", "Tizen") }
    @{ name = "AppActions"; namespace = "Microsoft.Maui.ApplicationModel"; description = "Provides app shortcuts that appear in the system UI"; platforms = @("Android", "iOS") }
    @{ name = "AppInfo"; namespace = "Microsoft.Maui.ApplicationModel"; description = "Provides information about the application"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Battery"; namespace = "Microsoft.Maui.Devices"; description = "Provides battery information and monitors for changes"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Clipboard"; namespace = "Microsoft.Maui.ApplicationModel.DataTransfer"; description = "Enables reading and writing text and other data to the system clipboard"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Compass"; namespace = "Microsoft.Maui.Devices.Sensors"; description = "Monitors the device's compass sensor to detect orientation"; platforms = @("Android", "iOS", "Windows") }
    @{ name = "Connectivity"; namespace = "Microsoft.Maui.Networking"; description = "Provides network connectivity information and monitors for changes"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Contacts"; namespace = "Microsoft.Maui.ApplicationModel.Communication"; description = "Allows picking and reading contact information"; platforms = @("Android", "iOS", "Windows") }
    @{ name = "DeviceDisplay"; namespace = "Microsoft.Maui.Devices"; description = "Provides information about the device's screen and orientation"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "DeviceInfo"; namespace = "Microsoft.Maui.Devices"; description = "Provides information about the device"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Email"; namespace = "Microsoft.Maui.ApplicationModel.Communication"; description = "Enables composing and sending email"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "FilePicker"; namespace = "Microsoft.Maui.Storage"; description = "Allows the user to pick files from the device"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "FileSystem"; namespace = "Microsoft.Maui.Storage"; description = "Provides access to application file system paths"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Flashlight"; namespace = "Microsoft.Maui.Devices"; description = "Controls the device's flashlight/torch"; platforms = @("Android", "iOS") }
    @{ name = "Geocoding"; namespace = "Microsoft.Maui.Devices.Sensors"; description = "Provides geocoding and reverse geocoding services"; platforms = @("Android", "iOS", "Windows", "Tizen") }
    @{ name = "Geolocation"; namespace = "Microsoft.Maui.Devices.Sensors"; description = "Retrieves the device's current geographic location"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Gyroscope"; namespace = "Microsoft.Maui.Devices.Sensors"; description = "Monitors the device's gyroscope sensor for rotation"; platforms = @("Android", "iOS", "Windows") }
    @{ name = "Haptic Feedback"; namespace = "Microsoft.Maui.Devices"; description = "Provides haptic feedback (vibration)"; platforms = @("Android", "iOS", "Windows", "Tizen") }
    @{ name = "Launcher"; namespace = "Microsoft.Maui.ApplicationModel"; description = "Enables launching URIs and apps"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Magnetometer"; namespace = "Microsoft.Maui.Devices.Sensors"; description = "Monitors the device's magnetometer sensor"; platforms = @("Android", "iOS", "Windows") }
    @{ name = "MainThread"; namespace = "Microsoft.Maui.ApplicationModel"; description = "Runs code on the application's main thread"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Map"; namespace = "Microsoft.Maui.ApplicationModel"; description = "Opens the system map application"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Media"; namespace = "Microsoft.Maui.Media"; description = "Enables taking photos and picking images"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Permissions"; namespace = "Microsoft.Maui.ApplicationModel"; description = "Checks and requests runtime permissions"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "PhoneDialer"; namespace = "Microsoft.Maui.ApplicationModel.Communication"; description = "Opens the phone dialer"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Preferences"; namespace = "Microsoft.Maui.Storage"; description = "Stores application preferences in key-value storage"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Screenshot"; namespace = "Microsoft.Maui.Media"; description = "Captures a screenshot of the current screen"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "SecureStorage"; namespace = "Microsoft.Maui.Storage"; description = "Securely stores key-value pairs"; platforms = @("Android", "iOS", "MacCatalyst", "Windows") }
    @{ name = "Share"; namespace = "Microsoft.Maui.ApplicationModel.DataTransfer"; description = "Enables sharing text and URIs to other apps"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Sms"; namespace = "Microsoft.Maui.ApplicationModel.Communication"; description = "Enables composing and sending SMS messages"; platforms = @("Android", "iOS", "Windows", "Tizen") }
    @{ name = "TextToSpeech"; namespace = "Microsoft.Maui.Media"; description = "Converts text to spoken audio"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Vibration"; namespace = "Microsoft.Maui.Devices"; description = "Controls device vibration"; platforms = @("Android", "iOS", "Windows", "Tizen") }
    @{ name = "WebAuthenticator"; namespace = "Microsoft.Maui.Authentication"; description = "Enables web-based authentication flows"; platforms = @("Android", "iOS", "MacCatalyst") }
)

$catalog.categories.essentials = $essentials

# Graphics
$graphics = @(
    @{ name = "Canvas"; namespace = "Microsoft.Maui.Graphics"; description = "Provides 2D drawing capabilities"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Colors"; namespace = "Microsoft.Maui.Graphics"; description = "Provides predefined colors"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Fonts"; namespace = "Microsoft.Maui.Graphics"; description = "Font handling and text rendering"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Images"; namespace = "Microsoft.Maui.Graphics"; description = "Image loading and manipulation"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Paint"; namespace = "Microsoft.Maui.Graphics"; description = "Defines how to paint graphics objects"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Patterns"; namespace = "Microsoft.Maui.Graphics"; description = "Pattern fills for graphics"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Shapes"; namespace = "Microsoft.Maui.Controls.Shapes"; description = "2D shape drawing (Ellipse, Line, Path, Polygon, Polyline, Rectangle)"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
    @{ name = "Text"; namespace = "Microsoft.Maui.Graphics.Text"; description = "Advanced text layout and rendering"; platforms = @("Android", "iOS", "MacCatalyst", "Windows", "Tizen") }
)

$catalog.categories.graphics = $graphics

# Blazor
$blazor = @(
    @{ name = "BlazorWebView"; namespace = "Microsoft.AspNetCore.Components.WebView.Maui"; description = "Hosts Blazor components in a native WebView"; platforms = @("Android", "iOS", "MacCatalyst", "Windows") }
    @{ name = "RootComponents"; namespace = "Microsoft.AspNetCore.Components.WebView.Maui"; description = "Defines the root Blazor components to render"; platforms = @("Android", "iOS", "MacCatalyst", "Windows") }
)

$catalog.categories.blazor = $blazor

# Convert to JSON and save
$jsonOutput = $catalog | ConvertTo-Json -Depth 10

Set-Content -Path $outputPath -Value $jsonOutput -Encoding UTF8

Write-Host "✅ Catalog generated successfully at: $outputPath"
Write-Host ""
Write-Host "Summary:"
Write-Host "  - Controls: $($controls.Count)"
Write-Host "  - Layouts: $($layouts.Count)"
Write-Host "  - Pages: $($pages.Count)"
Write-Host "  - Cells: $($cells.Count)"
Write-Host "  - Views: $($views.Count)"
Write-Host "  - Essentials: $($essentials.Count)"
Write-Host "  - Graphics: $($graphics.Count)"
Write-Host "  - Blazor: $($blazor.Count)"
Write-Host "  - Total: $(($controls.Count + $layouts.Count + $pages.Count + $cells.Count + $views.Count + $essentials.Count + $graphics.Count + $blazor.Count))"
