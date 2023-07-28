<#
.SYNOPSIS
A PowerShell command used to add the data from a GroupMe Data Export to a powershell object

.DESCRIPTION
A PowerShell command used to add the data from a GroupMe Data Export to a powershell object

.PARAMETER FilePath
full filepath for example C:\Users\qfavo\Downloads\00001\69163202\message.json

.EXAMPLE
$GroupMeData = Get-GroupMeData -FilePath $FilePath

.LINK
https://quazmoz.blogspot.com/2023/07/groupme-data-export.html

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