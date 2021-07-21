if (!(test-path -path "C:\download\final")){New-Item -ItemType "directory" -Path "C:\download\final\"}
if (!(test-path -path "C:\download\prased")){New-Item -ItemType "directory" -Path "C:\download\prased\"}


$source = 'https://easylist.to/easylist/easylist.txt'
$destination = 'c:\download\easylist.txt'
Invoke-WebRequest -Uri $source -OutFile $destination
$final_dest = "C:\download\prased\easylist.txt"

$list=Get-Content $destination
"#Kevin's easylist" | Out-File $final_dest
foreach ($item in $list)
{
    if(($item.indexof("||") -eq 0) -and ($item.indexof("^") -eq $item.Length - 1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }

    if(($item.indexof("||") -eq 0) -and ($item.indexof("third-party") -eq $item.Length - 11) -and ($item.indexof("^") -ne -1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }
}


$source = 'https://easylist.to/easylist/easyprivacy.txt'
$destination = 'c:\download\easyprivacy.txt'
Invoke-WebRequest -Uri $source -OutFile $destination
$final_dest = "C:\download\prased\easyprivacy.txt"

$list=Get-Content $destination
"#Kevin's easyprivacy.txt" | Out-File $final_dest
foreach ($item in $list)
{
    if(($item.indexof("||") -eq 0) -and ($item.indexof("^") -eq $item.Length - 1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }

    if(($item.indexof("||") -eq 0) -and ($item.indexof("third-party") -eq $item.Length - 11) -and ($item.indexof("^") -ne -1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }
}


$source = 'https://secure.fanboy.co.nz/fanboy-cookiemonster.txt'
$destination = 'c:\download\fanboy-cookiemonster.txt'
Invoke-WebRequest -Uri $source -OutFile $destination
$final_dest = "C:\download\prased\fanboy-cookiemonster.txt"

$list=Get-Content $destination
"#Kevin's fanboy-cookiemonster" | Out-File $final_dest
foreach ($item in $list)
{
    if(($item.indexof("||") -eq 0) -and ($item.indexof("^") -eq $item.Length - 1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }

    if(($item.indexof("||") -eq 0) -and ($item.indexof("third-party") -eq $item.Length - 11) -and ($item.indexof("^") -ne -1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }
}



$source = 'https://secure.fanboy.co.nz/fanboy-annoyance.txt'
$destination = 'c:\download\fanboy-annoyance.txt'
Invoke-WebRequest -Uri $source -OutFile $destination
$final_dest = "C:\download\prased\fanboy-annoyance.txt"

$list=Get-Content $destination
"#Kevin's fanboy-annoyance" | Out-File $final_dest
foreach ($item in $list)
{
    if(($item.indexof("||") -eq 0) -and ($item.indexof("^") -eq $item.Length - 1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }

    if(($item.indexof("||") -eq 0) -and ($item.indexof("third-party") -eq $item.Length - 11) -and ($item.indexof("^") -ne -1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }
}


#adGuard basic
$source = 'https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_2_English/filter.txt'
$destination = 'c:\download\adGuard-basic.txt'
Invoke-WebRequest -Uri $source -OutFile $destination
$final_dest = "C:\download\prased\adGuard-basic.txt"

$list=Get-Content $destination
"#Kevin's adGuard basic" | Out-File $final_dest
foreach ($item in $list)
{
    if(($item.indexof("||") -eq 0) -and ($item.indexof("^") -eq $item.Length - 1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }

    if(($item.indexof("||") -eq 0) -and ($item.indexof("third-party") -eq $item.Length - 11) -and ($item.indexof("^") -ne -1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }
}


#Tracking Protection filter
$source = 'https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_3_Spyware/filter.txt'
$destination = 'c:\download\adGuard-Tracking_Protection.txt'
Invoke-WebRequest -Uri $source -OutFile $destination
$final_dest = "C:\download\prased\adGuard-Tracking_Protection.txt"

$list=Get-Content $destination
"#Kevin's Tracking Protection filter" | Out-File $final_dest
foreach ($item in $list)
{
    if(($item.indexof("||") -eq 0) -and ($item.indexof("^") -eq $item.Length - 1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }

    if(($item.indexof("||") -eq 0) -and ($item.indexof("third-party") -eq $item.Length - 11) -and ($item.indexof("^") -ne -1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }
}

#URL Tracking filter
$source = 'https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_17_TrackParam/filter.txt'
$destination = 'c:\download\adGuard-URL_Tracking.txt'
Invoke-WebRequest -Uri $source -OutFile $destination
$final_dest = "C:\download\prased\adGuard-URL_Tracking.txt"

$list=Get-Content $destination
"#Kevin's URL Tracking filter" | Out-File $final_dest
foreach ($item in $list)
{
    if(($item.indexof("||") -eq 0) -and ($item.indexof("^") -eq $item.Length - 1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }

    if(($item.indexof("||") -eq 0) -and ($item.indexof("third-party") -eq $item.Length - 11) -and ($item.indexof("^") -ne -1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }
}

#Chinese filter
$source = 'https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_224_Chinese/filter.txt'
$destination = 'c:\download\adGuard-Chinese.txt'
Invoke-WebRequest -Uri $source -OutFile $destination
$final_dest = "C:\download\prased\adGuard-Chinese.txt"

$list=Get-Content $destination
"#Kevin's Chinese filter" | Out-File $final_dest
foreach ($item in $list)
{
    if(($item.indexof("||") -eq 0) -and ($item.indexof("^") -eq $item.Length - 1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }

    if(($item.indexof("||") -eq 0) -and ($item.indexof("third-party") -eq $item.Length - 11) -and ($item.indexof("^") -ne -1) -and ($item.indexof("*") -eq -1) -and ($item.indexof("/") -eq -1)){
    $url = $item.Substring(2, $item.indexof("^") -2)
    "host-suffix, " + $url + ", reject" | Out-File $final_dest -Append
    }
}



#Merge
Get-Content C:\download\prased\adGuard-basic.txt, C:\download\prased\adGuard-Chinese.txt, C:\download\prased\easylist.txt | Set-Content -Encoding UTF8 C:\download\final\adblock_combined_temp.txt
gc "C:\download\final\adblock_combined_temp.txt" | get-unique | Set-Content -Encoding UTF8 C:\download\final\\adblock_combined.txt
Remove-Item "C:\download\final\adblock_combined_temp.txt"

Get-Content C:\download\prased\easyprivacy.txt, C:\download\prased\fanboy-annoyance.txt, C:\download\prased\fanboy-cookiemonster.txt, C:\download\prased\adGuard-Tracking_Protection.txt, C:\download\prased\adGuard-URL_Tracking.txt | Set-Content -Encoding UTF8 C:\download\final\privacy_combined_temp.txt
gc "C:\download\final\privacy_combined_temp.txt" | get-unique | Set-Content -Encoding UTF8 C:\download\final\privacy_combined.txt
Remove-Item "C:\download\final\privacy_combined_temp.txt"
