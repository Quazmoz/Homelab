<#
.SYNOPSIS
A PowerShell command used to get the messages from a GroupMe Data Export

.DESCRIPTION
A PowerShell command used to get the messages from a GroupMe Data Export

.PARAMETER FilePath
full filepath for example C:\Users\qfavo\Downloads\00001\69163202\message.json

.EXAMPLE
Get-GroupMeMessages -FilePath $FilePath

.LINK
https://quazmoz.blogspot.com/2023/07/groupme-data-export.html

.NOTES
This will dump a txt file to the drive that you run this from
#>

Function Get-GroupMeMessages {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory)]
        [String]$FilePath
        ,
        [Switch]$ByUser
    )

    $Content = Get-Content $FilePath
    $Data = $Content | ConvertFrom-Json
    foreach ($Item in $Data) {
        $Date = (Get-Date 01.01.1970) + ([System.TimeSpan]::fromseconds($Item.Created_at))
        $TextFileObject += "`n"
        $TextFileObject += $Item.Name
        $TextFileObject += "`n"
        $TextFileObject += $Date.ToString("yyyy-MM-dd HH:mm:ss.ffffff")
        $TextFileObject += "`n"
        $TextFileObject += $Item.Text
    }
    $TextFileObject | Out-File -FilePath "./Messages.txt"
}