# -- For CIBMDC01 --#
#-- Install DHCP --#

Get-WindowsFeature | Where-Object Name -like *dhcp* Install-WindowsFeature DHCP -IncludeManagementTools

#-- Create Scopes --#
 
Add-DhcpServerv4Scope -Name "Datacenter" -StartRange 10.111.13.1 -EndRange 10.111.13.128 -SubnetMask 255.255.248.0
Add-DhcpServerv4Scope -Name "Champaign" -StartRange 10.12.13.1 -EndRange 10.12.13.128 -SubnetMask 255.255.248.0
Add-DhcpServerv4Scope -Name "Urbana" -StartRange 10.13.13.1 -EndRange 10.13.13.128 -SubnetMask 255.255.248.0 
Add-DhcpServerv4Scope -Name "Midtown" -StartRange 10.14.13.1 -EndRange 10.14.13.128 -SubnetMask 255.255.248.0
Add-DhcpServerv4Scope -Name "Monticello" -StartRange 10.16.13.1 -EndRange 10.16.13.128 -SubnetMask 255.255.248.0 
Add-DhcpServerv4Scope -Name "Danville" -StartRange 10.17.13.1 -EndRange 10.17.13.128 -SubnetMask 255.255.248.0
Add-DhcpServerv4Scope -Name "Avenue" -StartRange 10.25.13.1 -EndRange 10.25.13.128 -SubnetMask 255.255.248.0
Add-DhcpServerv4Scope -Name "Wheaton" -StartRange 10.31.13.1 -EndRange 10.31.13.128 -SubnetMask 255.255.248.0
Add-DhcpServerv4Scope -Name "Waukesha" -StartRange 10.41.13.1 -EndRange 10.41.13.128 -SubnetMask 255.255.248.0
Add-DhcpServerv4Scope -Name "Elm Grove" -StartRange 10.44.13.1 -EndRange 10.44.13.128 -SubnetMask 255.255.248.0
Add-DhcpServerv4Scope -Name "Clear Water" -StartRange 10.51.13.1 -EndRange 10.51.13.128 -SubnetMask 255.255.248.0
Add-DhcpServerv4Scope -Name "Bloomington" -StartRange 10.211.13.1 -EndRange 10.211.13.128 -SubnetMask 255.255.248.0
Add-DhcpServerv4Scope -Name "Sheridan" -StartRange 10.221.13.1 -EndRange 10.221.13.128 -SubnetMask 255.255.248.0         

#-- Set DHCP Options --#

Set-DhcpServerv4OptionValue -ScopeID 10.111.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.111.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.12.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.12.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.13.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.13.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.14.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.14.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.16.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.16.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.17.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.17.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.25.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.25.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.31.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.31.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.41.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.41.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.44.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.44.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.51.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.51.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.211.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.211.9.2
Set-DhcpServerv4OptionValue -ScopeID 10.221.8.0 -DnsDomain cibdp.com -DnsServer 10.111.9.25,10.111.9.22 -Router 10.221.9.2

