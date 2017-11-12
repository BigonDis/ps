#-- Install DHCP --#

Get-WindowsFeature | Where-Object Name -like *dhcp*Install-WindowsFeature DHCP -IncludeManagementTools

#-- Create Scopes --#
 
Add-DhcpServerv4Scope -Name "Datacenter" -StartRange 10.111.13.1 -EndRange 10.111.13.64 -SubnetMask 255.255.248.0

#-- Set DHCP Options --#

Set-DhcpServerv4OptionValue -ScopeID 10.111.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.111.9.2