$percentage = [int](Read-Host -Prompt "Enter your percentage: ")

if($percentage -lt 0 -or $percentage -gt 100)
{
    Write-Output "Invalid percentage"
    exit
}  

if($percentage -ge 90){
    Write-Host "You got A+"
}
elseif($percentage -ge 80){
    Write-Host "You got A"
}
elseif($percentage -ge 70){
    Write-Host "You got B+"
}
elseif($percentage -ge 60){
    Write-Host "You got B"
}
elseif($percentage -ge 50){
    Write-Host "You got C+"
}
elseif($percentage -ge 40){
    Write-Host "You got C"
}
elseif($percentage -ge 30){
    Write-Host "You got D+"
}
elseif($percentage -ge 20){
    Write-Host "You got D"
}
elseif($percentage -ge 10){
    Write-Host "You got E+"
}
elseif ($percentage -ge 0){
    Write-Host "You got E"
}
else{
    Write-Host "Invalid percentage"
}
  