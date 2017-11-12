#-- Get listing of all installed applications --#

Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | 
Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table -AutoSize

#-- List all Store Installed Applications --#

Get-AppxPackage | Select-Object Name, PackageFullName, Version | Format-Table -AutoSize