$files = ls;
$files | % { 
  $total = (Get-Content $_).Length;
  $_ | Add-Member -NotePropertyMembers @{ TotalLineas = $total }
}
$files | ft -Property @('Name','TotalLineas')