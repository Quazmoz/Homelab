Foreach ($Item in ($Items )){Remove-item $Item}

$items = Get-ChildItem -Path ./ -Recurse -Filter "*ilioNumb*"

$LogMessage = "testing `"some`" text"

if ($LogMessage -like "*`'*") {
    $LogMessage = $LogMessage.Replace("`'", "")

}elseif($LogMessage -like "*`"*"){
    $LogMessage = $LogMessage.Replace("`"", "")
}