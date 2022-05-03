Write-Output "Do you like ABMedia? (y/n)"
$answer = Read-Host -Prompt "options are y or n"

if ($answer -ceq "y" -or $answer -ceq "yes") {
  Write-Output "You said yes.  Great!"
}
elseif($answer -ceq "n" -or $answer -ceq "no") {
  Write-Output "You said no.  That's too bad."
}