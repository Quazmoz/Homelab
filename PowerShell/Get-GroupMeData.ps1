<#
.SYNOPSIS
A PowerShell command used to get the last build status for a particular Jenkins Job.

.DESCRIPTION
A PowerShell command used to get the last build status for a particular Jenkins Job.

.PARAMETER FilePath
full filepath for example C:\Users\qfavo\Downloads\00001\69163202\message.json

.EXAMPLE
$GroupMeData = Get-GroupMeData -FilePath $FilePath

.NOTES
Enter the full filepath to the messages.json file
#>

Function Get-GroupMeData {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory)]
        [String]$FilePath
    )
    $Content = Get-Content $FilePath
    $Data = $Content | ConvertFrom-Json
    Return $Data
}