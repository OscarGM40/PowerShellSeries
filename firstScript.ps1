Write-Output 'Please enter the first number:';
$first = [int](Read-Host); # fijate como necesita parentesis
# $first.GetType();

Write-Output 'Please enter the second number:';
$second = Read-Host;
# $second.GetType();

$total = $first + [int]$second; # obviamente puedo parsear despues

Write-Output "The sum of $first and $second is $total." #recuerda que los double quotes interpretan las variables

