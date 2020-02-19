param($FolderPath)
$Dir = get-childitem -path $FolderPath -recurse 
$List = $Dir | where {$_.extension -eq ".java"} 
if($list)
{
foreach($i  in $list)
{
$ask = read-host "$i ada, ganti ? (y/t)"
if($ask -eq "Y")
{
$newname = read-host "masukkan nama baru"
Rename-Item -path "$FolderPath\$i" -newname "$newname.java"
"Ganti Nama Berhasil, nama baru adalah $newname.java"
}
}
}else{
"tidak ada file java di folder $folderpath"}






function TestPath()  
{ 
    $FileExists = Test-Path $FolderPath 
    If ($FileExists -eq $True)  
    { 
        Return $true 
    } 
    Else  
    { 
        Return $false 
    } 
}