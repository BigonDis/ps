 
#-- Import Module for Powercli --#
Import-Module -Name VMware.Powercli

#-- Connect to Virtual Center Server --#
Connect-VIServer -Server oakvc.cibdp.com

#-- Get Snapshots and Export to CSV File --#
get-vm | Get-Snapshot | select vm, name, created | export-csv c:\users\oman\Documents\snaps.csv

#-- Email Report out --#
Send-MailMessage -To "Lee.Abner@cibmis.com,Ray.Vanna@cibmis.com" -From "admin@cibmis.com" -SMTPServer "exchange.cibdp.com" -Subject "Snapshot Report" -Attachments c:\users\oman\Documents\snaps.csv
