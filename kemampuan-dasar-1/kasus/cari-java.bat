param($FolderPath)
$Dir = get-childitem -path $FolderPath -recurse 
$List = $Dir | where {$_.extension -eq ".java"} 
if($list){
$List | format-table Name 
"ada file java pada direktori $FolderPath"
 }
 else{
 "tidak ada file java"
 }


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