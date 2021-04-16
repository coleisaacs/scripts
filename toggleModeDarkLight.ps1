<#
.SYNOPSIS
    Toggle between Windows light and dark modes. 
.DESCRIPTION
    Allows one to quickly toggle between Windows colour modes, if apps are set to use System they will adjust. 
Author: Cole Isaacs | coleisaacs@gmail.com
.NOTES
    I claim no credit, but do claim the snark. Consider:
    Pinning it your taskbar, create a scheduled task, make it an exe or set it in your startup folder. 
    Resource: https://www.reddit.com/r/windows/comments/3f0n2u/windows_10_enable_dark_mode/
#>

# Reigstry Key path and key. 
$path = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
$key = "AppsUseLightTheme"
$getKey =  Get-ItemProperty -Path $path -Name $key

# Check key bool value to toggle between light mode and dark mode.

If(0 -eq $getKey.AppsUseLightTheme){
    Set-ItemProperty -Path $path -Name $key -Value 1
    }
else{
    Set-ItemProperty -Path $path -Name $key -Value 0
}

