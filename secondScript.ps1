$files = Get-ChildItem;

$files | ForEach-Object { 
  $noOfLines = (Get-Content $_).Length
  $_ | Add-Member -NotePropertyMembers @{ LineCount = $noOfLines }  
};

$files | Format-Table -Property @('Name','LineCount');