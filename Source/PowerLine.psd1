@{

# Script module or binary module file associated with this manifest.
RootModule = 'PowerLine.psm1'

# Version number of this module.
ModuleVersion = '3.2.1'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'bf97d03d-439c-4b5d-bab1-0024461a7a70'

# Author of this module
Author = 'Joel Bennett'

# Company or vendor of this module
CompanyName = 'HuddledMasses.org'

# Copyright statement for this module
Copyright = '(c) 2016-2020 Joel Bennett. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Classes for richer output and prompts'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1.0'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @("PowerLine.types.ps1xml")

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = @("PowerLine.format.ps1xml")

RequiredModules = @(
    @{ModuleName="Configuration"; ModuleVersion="1.1.0"}
    @{ModuleName="Pansies";       ModuleVersion="2.0.0"}
)
# RequiredAssemblies = "lib\PowerLine.dll"

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Set-PowerLinePrompt', 'Write-PowerlinePrompt', 'Export-PowerLinePrompt', 'Get-PowerLineTheme', 'Add-PowerLineBlock', 'Remove-PowerLineBlock', 'New-PromptText', 'Get-Elapsed', 'Get-ErrorCount', 'Get-SegmentedPath', 'Get-ShortenedPath', 'Test-Success', 'Test-Elevation'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'New-PowerLineBlock', 'Set-PowerLineTheme'

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{
    PSData = @{
        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @("Prompt", "ANSI", "VirtualTerminal", "EzTheme")

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/Jaykul/PowerLine/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Jaykul/PowerLine'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '
        3.2.0: Add support for EzTheme
        3.1.2: Fix the -HideError switch being backwards
               Log non-terminating errors
        3.1.1: Fix default insertion point when -Timeline or -Newline are used
        3.1.0: Adds Error output, so when something is wrong, you will know!
            Also adds support for hiding the errors
            Adds a function `Get-ErrorCount` comparing the count in `$Error` since the last command
            Fixes longstanding bug where right-aligned columns would sometimes leak background color
        '
    } # End of PSData hashtable
    "EzTheme" = @{
        Get = 'Get-PowerLineTheme'
        Set = 'Set-PowerLineTheme'
    }
} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

