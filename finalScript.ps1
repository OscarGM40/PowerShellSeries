$persons = @{};
while ($true) {

  Write-Host "What do you want to do?"
  Write-Host "  1.Add a person"
  Write-Host "  2.Add a point"
  Write-Host "  3.Remove a point"
  Write-Host "  4.List all people"


  $option = [int](Read-Host "Enter an option(1-4)")
  while ($option -lt 1 -or $option -gt 4) {
    Write-Host "Invalid option"
    $option = [int](Read-Host "Please, enter a valid option(1-4):")
  }

  if ($option -eq 1) {
    $name = [string](Read-Host "Enter the name of the person")
    $persons.Add($name, 0)
    Write-Host "$name added"
  }
  elseif ($option -eq 2) {
    $name = [string](Read-Host "Enter the name of the person who will receive the point")
    if ($persons.ContainsKey($name)) {
      $persons.Item($name) += 1
      Write-Host "$name received a point"
    }
    else {
      Write-Host "$name does not exist"
    }
  }
  elseif ($option -eq 3) {
    $name = [string](Read-Host "Enter the name of the person who will lose the point")
    if ($persons.ContainsKey($name)) {
      $persons.Item($name) -= 1
      Write-Host "$name lost a point"
    }
    else {
      Write-Host "$name does not exist"
    }
  }
  elseif ($option -eq 4) {
    $persons
  }
}