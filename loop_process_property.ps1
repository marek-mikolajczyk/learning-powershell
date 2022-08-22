get-process notepad* | Select -ExpandProperty "Name" | Out-File -FilePath C:\Users\pmare\Downloads\Process.txt

get-content -Path C:\Users\pmare\Downloads\Process.txt | foreach-object {
    write-output "my process in $_"
    }
     
write-output "now trying with collection"

stop-process -Name (get-content -Path C:\Users\pmare\Downloads\Process.txt)
