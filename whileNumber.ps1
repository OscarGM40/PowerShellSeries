$percentage = [int](Read-Host 'Enter the percentage');
while ($percentage -lt 0 -or $percentage -gt 100) {
  [int]$percentage = Read-Host "Try again!. Enter the percentage";
}