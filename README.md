# learning-powershell

$pshome C:\Windows\System32\WindowsPowerShell\v1.0>


format-table -groupby Status - very nice option
Get-Service -Name DsmSvc | fl -property *01  - makes same as gm, but displays values
fw - displays only one parameter. display column 3

out-gridview

# Filtering
 get-process | where-object {$_.ProcessName -Match "note*"}
 get-process | where-object {$_.ProcessName -Match "note*" -and $_.ProcessName -notlike '*+'}
-like
-match
where-object -filter

measure-object


# Errors
$error[0].Exception.Message


# test syntax
Get-Command -syntax '.\logging.ps1'

# output streams
write-information
write-warning
